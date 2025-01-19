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
            return plugin

class plugin():
    def __init__(self, name, type, version):
        self.name = name
        self.type = type
        self.version = version
        self.port = "unset"
        self.address = "unset"
        self.plugin_address = "unset"

    def check_loaded(self, cif_manager):
        i = 0
        while i < 20:
          result_info = cif_manager.stub.QueryPlugin(cif_manager_pb2.PluginName(plugin_name=self.name))
          res = check_error(result_info.error)
          if res != 0:
            return self
          if result_info.plugin_info.grpc_port != -1:
            self.pluginaddress = self.address + ":" + str(result_info.plugin_info.grpc_port)
            self.stub = cif_plugin_core_pb2_grpc.PluginCoreStub(grpc.insecure_channel(self.pluginaddress))
            return self
          time.sleep (0.25)
          i += 1
          if i == 20:
            print(f"{bcolors.WARNING}Plugin {plugin.name} did not load before timeout. {bcolors.ENDC}")
            return self

    def check_and_run(self, cif_manager):
        self = self.check_loaded(cif_manager)
        self.run()
        return self
    
    def run(self):
        result_info = self.stub.Start(cif_plugin_core_pb2.Empty())
        res = check_error(result_info)

#     def set_stub(self, port):
#         self.port = port
#         self.pluginaddress = self.address + ":" + self.port
#         self.pluginstub = cif_plugin_core_pb2_grpc.PluginCoreStub(grpc.insecure_channel(self.pluginaddress))
#         return self

class channel_link():
        name:str
        type:str
        version:str

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

# query_settings = cif_manager_pb2.QuerySettings(query_all=False)

# def get_manager_stub(manageraddress):
#         managerstub = cif_manager_pb2_grpc.ManagerStub(grpc.insecure_channel(manageraddress))
#         return managerstub

# def load(plugin, managerstub):
#         result_info = managerstub.LoadPlugin(cif_manager_pb2.PluginConfig(plugin_type=plugin.type, plugin_name=plugin.name, version=plugin.version))
#         res = check_error(result_info)
#         if res == 0:
#           plugin_address = manager_address.split(":")[0]
#           plugin = plugin.set_address(plugin_address)
#           return plugin  

# def load2(plugin, managerstub):
#         result_info = managerstub.LoadPlugin(cif_manager_pb2.PluginConfig(plugin_type=plugin.type, plugin_name=plugin.name, version=plugin.version))
#         res = check_error(result_info)
#         if res == 0:
#           plugin_address = manager_address.split(":")[0]
#           plugin = plugin.set_address(plugin_address)
#           return plugin  

# def load(plugin, cif_manager):
#     result_info = cif_manager.stub.LoadPlugin(cif_manager_pb2.PluginConfig(plugin_type=plugin.type, plugin_name=plugin.name, version=plugin.version))
#     res = check_error(result_info)
#     if res == 0:
#         plugin = plugin.set_address(cif_manager.address)
#         print (f"Returning the plugin {plugin}")
# #         return plugin

# def run(plugin_name, manager_address):
#         check_loaded(plugin_name, manager_address)
#         managerstub = cif_manager_pb2_grpc.ManagerStub(grpc.insecure_channel(manager_address))
#         result_info = managerstub.QueryPlugin(cif_manager_pb2.PluginName(plugin_name=plugin_name))
#         res = check_error(result_info.error)
#         if res == 0:
#           pluginaddress = manager_address.split(":")[0] + ":" + str(result_info.plugin_info.grpc_port)
#           pluginstub = cif_plugin_core_pb2_grpc.PluginCoreStub(grpc.insecure_channel(pluginaddress))
#           result_info = pluginstub.Start(cif_plugin_core_pb2.Empty())
#           res = check_error(result_info)    

# # def link(chanlink):
# #         managerstub.LoadPlugin(cif_manager_pb2.PluginConfig(plugin_type=plugin.type, plugin_name=plugin.name, version=plugin.version))
# #         # add code to check returned error and print to terminal if error

# # def check_loaded2(plugin, manager_address):
# #         managerstub = cif_manager_pb2_grpc.ManagerStub(grpc.insecure_channel(manager_address))
# #         i = 0
# #         while i < 20:
# #           result_info = managerstub.QueryPlugin(cif_manager_pb2.PluginName(plugin_name=plugin.name))
# #           res = check_error(result_info.error)
# #           if res != 0:
# #             break
# #           if result_info.plugin_info.grpc_port != -1:
# #                 pluginaddress = manager_address.split(":")[0] + ":" + str(result_info.plugin_info.grpc_port)
# #                 pluginstub = cif_plugin_core_pb2_grpc.PluginCoreStub(grpc.insecure_channel(pluginaddress))
# #                 return pluginstub
# #           time.sleep (0.25)
# #           i += 1
# #           if i == 20:
# #             print(f"{bcolors.WARNING}Plugin {plugin.name} did not load before timeout. {bcolors.ENDC}")

# def check_loaded(plugin, cif_manager):
#         i = 0
#         while i < 20:
#           result_info = cif_manager.stub.QueryPlugin(cif_manager_pb2.PluginName(plugin_name=plugin.name))
#           res = check_error(result_info.error)
#           if res != 0:
#             break
#           if result_info.plugin_info.grpc_port != -1:
#                 plugin = plugin.set_stub(str(result_info.plugin_info.grpc_port))
#                 # pluginstub = cif_plugin_core_pb2_grpc.PluginCoreStub(grpc.insecure_channel(pluginaddress))
#                 return plugin
#           time.sleep (0.25)
#           i += 1
#           if i == 20:
#             print(f"{bcolors.WARNING}Plugin {plugin.name} did not load before timeout. {bcolors.ENDC}")

# def check_loaded(plugin_name, manager_address):
#         managerstub = cif_manager_pb2_grpc.ManagerStub(grpc.insecure_channel(manager_address))
#         i = 0
#         while i < 20:
#           result_info = managerstub.QueryPlugin(cif_manager_pb2.PluginName(plugin_name=plugin_name))
#           res = check_error(result_info.error)
#           if res != 0:
#             break
#           if result_info.plugin_info.grpc_port != -1:
#                 pluginaddress = manager_address.split(":")[0] + ":" + str(result_info.plugin_info.grpc_port)
#                 pluginstub = cif_plugin_core_pb2_grpc.PluginCoreStub(grpc.insecure_channel(pluginaddress))
#                 return pluginstub
#           time.sleep (0.25)
#           i += 1
#           if i == 20:
#             print(f"{bcolors.WARNING}Plugin {plugin_name} did not load before timeout. {bcolors.ENDC}")