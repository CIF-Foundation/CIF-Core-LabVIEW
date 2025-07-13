import cif_orchestration_base
import time

#Set the IP address and port of the CIF manager on the target
server_ip = "192.168.1.160"
manager_port = "15882"

#Configuration for plugins including channel links  
temp1 = cif_orchestration_base.plugin("temp1", "TemplatePlugin", "2.0.0")
temp2 = cif_orchestration_base.plugin("temp2", "TemplatePlugin", "2.0.0")
fifo1 = cif_orchestration_base.fifo_instance("add", "temp2.u8array_out", "0", "0", "0", "01234506")
link1 = cif_orchestration_base.channel_link("temp2.u8array_out", "temp1.u8array_in", "")
temp2_config1 = '{"Common":{"Period (s)":0.001,"Offset (us)":0,"ClockID":0,"Priority":100,"Processor":-2},"Step":100}'

#Create connection to the CIF manager
cif_manager = cif_orchestration_base.cif_manager(server_ip, manager_port)

#Business logic (Load plugins, link channel, configure plugins, change state, etc)
cif_manager.load(temp1)
cif_manager.load(temp2)
temp2.create_fifo_instance(fifo1)
temp1.connect_channel(link1)
temp1.run(wait_running=False)
temp2.run(wait_running=False)
temp2.update_config(temp2_config1)
print("-------------- Mischief Managed --------------")