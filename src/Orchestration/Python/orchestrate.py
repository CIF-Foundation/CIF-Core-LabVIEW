import cif_orchestration_base
import time

#Set the IP address and port of the CIF manager on the target
server_ip = "192.168.1.160"
manager_port = "15882"

#Configuration for plugins including channel links  
lovingit6 = cif_orchestration_base.plugin("lovingit6", "CIFCorePlugin", "0.1.2")
channelme = cif_orchestration_base.plugin("channelme", "TemplatePlugin", "0.2.3")
link1 = cif_orchestration_base.channel_link("channelme/doubleout", "channelme/doublein1", "0AB7")
channelme_config1 = '{"Common":{"Period (s)":0.01}}'

#Create connection to the CIF manager
cif_manager = cif_orchestration_base.cif_manager(server_ip, manager_port)

#Business logic (Load plugins, link channel, configure plugins, change state, etc)
lovingit6 = cif_manager.load(lovingit6)
channelme = cif_manager.load(channelme)
channelme = channelme.connect_channel(link1)
channelme = channelme.update_config(channelme_config1)
lovingit6 = lovingit6.run(wait_running=False)
channelme = channelme.run(wait_running=False)
print("-------------- Mischief Managed --------------")