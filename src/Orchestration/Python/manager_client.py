import cif_orchestration_base

#Set the IP address and port of the CIF manager on the target
server_ip = "192.168.1.160"
manager_port = "15882"

#Configuration for plugins including channel links.  
plugin1 = cif_orchestration_base.plugin("lovingit6", "CIFCorePlugin", "0.1.2")
plugin2 = cif_orchestration_base.plugin("channelme", "TemplatePlugin", "")
link1 = cif_orchestration_base.channel_link("channelme/doubleout", "channelme/doublein1", "")
plugin2_config1 = '{"Common":{"Period (s)":0.01}}'

#Creation connection to the CIF manager
cif_manager = cif_orchestration_base.cif_manager(server_ip, manager_port)

#Business logic (Load plugins, link channel, configure plugins, change state, etc)
plugin1 = cif_manager.load(plugin1)
plugin2 = cif_manager.load(plugin2)
plugin2 = plugin2.connect_channel(link1)
plugin2 = plugin2.update_config(plugin2_config1)
plugin1 = plugin1.run()
plugin2 = plugin2.run()
print("-------------- Mischief Managed --------------")