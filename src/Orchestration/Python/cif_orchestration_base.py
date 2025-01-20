from enum import Enum
import grpc
import time
import re
import cif_manager_pb2
import cif_manager_pb2_grpc
import cif_plugin_core_pb2
import cif_plugin_core_pb2_grpc
import cif_channel_core_pb2
import cif_channel_core_pb2_grpc

class cif_manager():
    def __init__(self, address, port):
        self.address = address
        self.port = port
        self.manager_address = self.address + ":" + self.port
        self.stub = cif_manager_pb2_grpc.ManagerStub(grpc.insecure_channel(self.manager_address))

    def load(self, plugin):
        result_info = self.stub.LoadPlugin(cif_manager_pb2.PluginConfig(plugin_type=plugin.type, plugin_name=plugin.name, version=plugin.version))
        res = check_error(result_info)
        if res == 0:
            plugin.address = self.address
            plugin.connection = plugin_connection.NOT_CONNECTED
            plugin.cif_manager = self
            return plugin

class plugin_connection(Enum):
    UNLOADED = 1
    NOT_CONNECTED = 2
    CONNECTED = 3

class plugin():
    def __init__(self, name, type, version):
        self.name = name
        self.type = type
        self.version = version
        self.port = "unset"
        self.address = "unset"
        self.plugin_address = "unset"
        self.connection = plugin_connection.UNLOADED

    def check_loaded(self):
        if self.connection == plugin_connection.UNLOADED:
            print(f"{bcolors.WARNING}Plugin {self.name} has not been loaded. {bcolors.ENDC}")
            return self
        if self.connection == plugin_connection.NOT_CONNECTED:
            i = 0
            while i < 20:
              result_info = self.cif_manager.stub.QueryPlugin(cif_manager_pb2.PluginName(plugin_name=self.name))
              res = check_error(result_info.error)
              if res != 0:
                return self
              if result_info.plugin_info.grpc_port != -1:
                self.pluginaddress = self.address + ":" + str(result_info.plugin_info.grpc_port)
                self.stub = cif_plugin_core_pb2_grpc.PluginCoreStub(grpc.insecure_channel(self.pluginaddress))
                self.stub_channel = cif_channel_core_pb2_grpc.ChannelCoreStub(grpc.insecure_channel(self.pluginaddress))
                self.connection = plugin_connection.CONNECTED
                return self
              time.sleep (0.25)
              i += 1
              if i == 20:
                print(f"{bcolors.WARNING}Plugin {plugin.name} did not load before timeout. {bcolors.ENDC}")
                return self
        return self  

    def run(self):
        self = self.check_loaded()
        result_info = self.stub.Start(cif_plugin_core_pb2.Empty())
        check_error(result_info)
        return self
    
    def update_config(self, json):
        self = self.check_loaded()
        result_info = self.stub.UpdateConfig(cif_plugin_core_pb2.Configuration(json_config=json))
        check_error(result_info)
        return self
    
    def connect_channel(self, channel_link):
        self = self.check_loaded()
        result_info = self.stub_channel.SetConnection(cif_channel_core_pb2.ConnectSubscriber(subscriber_name=channel_link.subscriber, publisher_name=channel_link.publisher, custom_connect=channel_link.custom_data))
        check_error(result_info)
        return self
    

class channel_link():
    def __init__(self, publisher, subscriber, custom_data):
        self.subscriber = subscriber
        self.publisher = publisher
        # self.custom_data = bytes()
        self.custom_data = bytes(custom_data, 'utf-8')

class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKCYAN = '\033[96m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'

class result_error():
    message: str
    code: int

def check_error(result_error):
      if result_error.code != 0:
        print(f"{bcolors.FAIL} {result_error.message} {bcolors.ENDC}")
        return 1
      else:
        return 0