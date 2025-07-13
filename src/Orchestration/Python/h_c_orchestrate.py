import cif_orchestration_base
import time

#Set the IP address and port of the CIF manager on the target
server_ip = "192.168.1.160"
manager_port = "15882"

#Configuration for plugins including channel links  
Heather_is_cute_too = cif_orchestration_base.plugin("Heather_is_cute_too", "TemplatePlugin", "2.0.0")
Charlie_is_cute = cif_orchestration_base.plugin("Charlie_is_cute", "TemplatePlugin", "2.0.0")
fifo13 = cif_orchestration_base.fifo_instance("add", "Heather_is_cute_too.u8array_out", "0", "0", "0", "")
link13 = cif_orchestration_base.channel_link("Heather_is_cute_too.u8array_out", "Charlie_is_cute.u8array_in", "")
Charlie_is_cute_config18 = '{"Common":{"Period (s)":0.002,"Offset (us)":0,"ClockID":0,"Priority":100,"Processor":-2},"Step":100}'
Heather_is_cute_too = cif_orchestration_base.plugin("Heather_is_cute_too", "TemplatePlugin", "2.0.0")
Charlie_is_cute = cif_orchestration_base.plugin("Charlie_is_cute", "TemplatePlugin", "2.0.0")
fifo14 = cif_orchestration_base.fifo_instance("add", "Heather_is_cute_too.u8array_out", "0", "0", "0", "")
link14 = cif_orchestration_base.channel_link("Heather_is_cute_too.u8array_out", "Charlie_is_cute.u8array_in", "")
Charlie_is_cute_config19 = '{"Common":{"Period (s)":0.002,"Offset (us)":0,"ClockID":0,"Priority":100,"Processor":-2},"Step":100}'
Charlie-iscute = cif_orchestration_base.plugin("Charlie is cute", "TemplatePlugin", "2.0.0")
Charlie-iscute_config20 = '{"Common":{"Period (s)":0.0030000000000000001,"Offset (us)":0,"ClockID":0,"Priority":100,"Processor":-2},"Step":100}'

#Create connection to the CIF manager
cif_manager = cif_orchestration_base.cif_manager(server_ip, manager_port)

#Business logic (Load plugins, link channel, configure plugins, change state, etc)
cif_manager.load(Heather_is_cute_too)
cif_manager.load(Charlie_is_cute)
Heather_is_cute_too.create_fifo_instance(fifo13)
Charlie_is_cute.connect_channel(link13)
Heather_is_cute_too.run(wait_running=False)
Charlie_is_cute.update_config(Charlie_is_cute_config18)
Charlie_is_cute.run(wait_running=False)
cif_manager.load(Heather_is_cute_too)
cif_manager.load(Charlie_is_cute)
Heather_is_cute_too.create_fifo_instance(fifo14)
Charlie_is_cute.connect_channel(link14)
Charlie_is_cute.update_config(Charlie_is_cute_config19)
Heather_is_cute_too.run(wait_running=False)
Charlie_is_cute.run(wait_running=False)
cif_manager.load(Charlie,iscute)
Charlie,iscute.update_config(Charlie,iscute_config20)
print("-------------- Mischief Managed --------------")