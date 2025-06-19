import cif_orchestration_base
import time

#Set the IP address and port of the CIF manager on the target
server_ip = "192.168.1.155"
manager_port = "15882"

#Configuration for plugins including channel links  
rm26999 = cif_orchestration_base.plugin("rm26999", "RM26999Plugin", "0.3.1")
batcap = cif_orchestration_base.plugin("batcap", "BatteryCapacityPlugin", "0.1.4")
rm26999_config1 = '{"Common":{"Period (s)":0.20000000000000001,"Offset (us)":0,"ClockID":0,"Priority":100,"Processor":-2},"Device Name":"PXI1Slot2","Device Connector":0,"Sample Rate (Hz)":1000000,"Samples per Channel":100000,"Channel Configuration":[{"Max Voltage (V)":2000,"Current Sensor":{"Current Sensor":2,"Max Current (A)":599.999999999999999,"Custom Sensor Scaling":{"Input":0,"Output":0,"Output Units":0,"Shunt Resistor (Ohms)":0}}},{"Max Voltage (V)":2000,"Current Sensor":{"Current Sensor":2,"Max Current (A)":599.999999999999999,"Custom Sensor Scaling":{"Input":0,"Output":0,"Output Units":0,"Shunt Resistor (Ohms)":0}}},{"Max Voltage (V)":2000,"Current Sensor":{"Current Sensor":2,"Max Current (A)":599.999999999999999,"Custom Sensor Scaling":{"Input":0,"Output":0,"Output Units":0,"Shunt Resistor (Ohms)":0}}},{"Max Voltage (V)":2000,"Current Sensor":{"Current Sensor":2,"Max Current (A)":599.999999999999999,"Custom Sensor Scaling":{"Input":0,"Output":0,"Output Units":0,"Shunt Resistor (Ohms)":0}}}]}'
fifo1 = cif_orchestration_base.fifo_instance("add", "rm26999/V_I_Waveform", "False", "False", "0")
link1 = cif_orchestration_base.channel_link("rm26999/V_I_Waveform_1", "batcap/V_I_Waveform", "")

#Create connection to the CIF manager
cif_manager = cif_orchestration_base.cif_manager(server_ip, manager_port)

#Business logic (Load plugins, link channel, configure plugins, change state, etc)
cif_manager.load(rm26999)
cif_manager.load(batcap)
rm26999.update_config(rm26999_config1)
rm26999.run(wait_running=False)
rm26999.run(wait_running=False)
rm26999.create_fifo_instance(fifo1)
batcap.connect_channel(link1)
batcap.run(wait_running=False)
print("-------------- Mischief Managed --------------")