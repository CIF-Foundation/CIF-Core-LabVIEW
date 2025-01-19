import cif_orchestration_base

server_ip = "192.168.1.160"
manager_port = "15882"

cif_manager = cif_orchestration_base.cif_manager(server_ip, manager_port)
plugin1 = cif_orchestration_base.plugin("lovingit6", "CIFCorePlugin", "0.1.2")
plugin2 = cif_orchestration_base.plugin("channelme", "TemplatePlugin", "")
link1 = cif_orchestration_base.channel_link("channelme/doubleout", "channelme/doublein1", "")

plugin1 = cif_manager.load(plugin1)
plugin2 = cif_manager.load(plugin2)
plugin2 = plugin2.connect_channel(link1)
plugin1 = plugin1.run()
# plugin1 = plugin1.check_and_run(cif_manager)
print("-------------- Mischief Managed --------------")