import cif_orchestration_base
import time

#Set the IP address and port of the CIF manager on the target
server_ip = "192.168.1.160"
manager_port = "15882"

#Configuration for plugins including channel links  
lovingit6 = cif_orchestration_base.plugin("lovingit6", "CIFCorePlugin", "0.3.0")
channelme = cif_orchestration_base.plugin("channelme", "TemplatePlugin", "0.4.0")
channelme_1 = cif_orchestration_base.plugin("channelme_1", "TemplatePlugin", "0.4.0")
channelme_2 = cif_orchestration_base.plugin("channelme_2", "TemplatePlugin", "0.4.0")
channelme_3 = cif_orchestration_base.plugin("channelme_3", "TemplatePlugin", "0.4.0")
channelme_4 = cif_orchestration_base.plugin("channelme_4", "TemplatePlugin", "0.4.0")
channelme_5 = cif_orchestration_base.plugin("channelme_5", "TemplatePlugin", "0.4.0")
channelme_6 = cif_orchestration_base.plugin("channelme_6", "TemplatePlugin", "0.4.0")
channelme_7 = cif_orchestration_base.plugin("channelme_7", "TemplatePlugin", "0.4.0")
link1 = cif_orchestration_base.channel_link("channelme/doubleout", "channelme/doublein1", "0AB7")
channelme_config1 = '{"Common":{"Period (s)":0.01}}'

#Create connection to the CIF manager
cif_manager = cif_orchestration_base.cif_manager(server_ip, manager_port)

#Business logic (Load plugins, link channel, configure plugins, change state, etc)
cif_manager.load(lovingit6)
cif_manager.load(channelme)
cif_manager.load(channelme_1)
cif_manager.load(channelme_2)
cif_manager.load(channelme_3)
cif_manager.load(channelme_4)
cif_manager.load(channelme_5)
cif_manager.load(channelme_6)
cif_manager.load(channelme_7)
channelme.connect_channel(link1)
channelme.update_config(channelme_config1)
lovingit6.run(wait_running=False)
channelme.run(wait_running=False)
channelme_1.run(wait_running=False)
print("-------------- Mischief Managed --------------")