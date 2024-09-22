<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="21008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
	<Item Name="RT PXI Target" Type="RT PXI Chassis">
		<Property Name="alias.name" Type="Str">RT PXI Target</Property>
		<Property Name="alias.value" Type="Str">192.168.1.160</Property>
		<Property Name="CCSymbols" Type="Str">TARGET_TYPE,RT;OS,Linux;CPU,x64;</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">9</Property>
		<Property Name="host.TargetOSID" Type="UInt">19</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Faults" Type="Str"></Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
		<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
		<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
		<Property Name="target.RTTarget.ApplicationPath" Type="Path">/c/ni-rt/startup/startup.rtexe</Property>
		<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
		<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
		<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">false</Property>
		<Property Name="target.RTTarget.VIPath" Type="Path">/home/lvuser/natinst/bin</Property>
		<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.tcp.access" Type="Str">+*</Property>
		<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
		<Property Name="target.server.tcp.port" Type="Int">3363</Property>
		<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.WebServer.Config" Type="Str">Listen 8000

NI.ServerName default
DocumentRoot "$LVSERVER_DOCROOT"
TypesConfig "$LVSERVER_CONFIGROOT/mime.types"
DirectoryIndex index.htm
WorkerLimit 10
InactivityTimeout 60

LoadModulePath "$LVSERVER_MODULEPATHS"
LoadModule LVAuth lvauthmodule
LoadModule LVRFP lvrfpmodule

#
# Pipeline Definition
#

SetConnector netConnector

AddHandler LVAuth
AddHandler LVRFP

AddHandler fileHandler ""

AddOutputFilter chunkFilter


</Property>
		<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
		<Property Name="target.WebServer.Port" Type="Int">80</Property>
		<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
		<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
		<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
		<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
		<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
		<Item Name="CIFTemplatePlugin.lvlib" Type="Library" URL="../../Callable Library/CIFTemplatePlugin.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="user.lib" Type="Folder">
				<Item Name="openg_error.lvlib" Type="Library" URL="/&lt;userlib&gt;/_OpenG.lib/error/error.llb/openg_error.lvlib"/>
				<Item Name="openg_variant.lvlib" Type="Library" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/openg_variant.lvlib"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="1D String Array to Delimited String.vi" Type="VI" URL="/&lt;vilib&gt;/AdvancedString/1D String Array to Delimited String.vi"/>
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="Assert Error Cluster Type.vim" Type="VI" URL="/&lt;vilib&gt;/Utility/TypeAssert/Assert Error Cluster Type.vim"/>
				<Item Name="Assert Integer Type.vim" Type="VI" URL="/&lt;vilib&gt;/Utility/TypeAssert/Assert Integer Type.vim"/>
				<Item Name="Assert Signed Integer Type.vim" Type="VI" URL="/&lt;vilib&gt;/Utility/TypeAssert/Assert Signed Integer Type.vim"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="CIFChannelCore.lvlib" Type="Library" URL="/&lt;vilib&gt;/CIFChannels/CIFChannelCore.lvlib"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="Get LV Class Default Value By Name.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value By Name.vi"/>
				<Item Name="Get LV Class Name.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Name.vi"/>
				<Item Name="grpc-lvsupport-release.lvlib" Type="Library" URL="/&lt;vilib&gt;/gRPC/LabVIEW gRPC Library/grpc-lvsupport-release.lvlib"/>
				<Item Name="gRPC-servicer-release.lvlib" Type="Library" URL="/&lt;vilib&gt;/gRPC/LabVIEW gRPC Servicer/gRPC-servicer-release.lvlib"/>
				<Item Name="JKI JSON Serialization.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/_JKI.lib/Serialization/JSON/JKI JSON Serialization.lvlib"/>
				<Item Name="JKI Serialization.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/_JKI.lib/Serialization/Core/JKI Serialization.lvlib"/>
				<Item Name="JKI Unicode.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/_JKI.lib/Unicode/JKI Unicode.lvlib"/>
				<Item Name="LV70DateRecToTimeStamp.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/LV70DateRecToTimeStamp.vi"/>
				<Item Name="LVDateTimeRec.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVDateTimeRec.ctl"/>
				<Item Name="LVMapReplaceAction.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVMapReplaceAction.ctl"/>
				<Item Name="NI_Data Type.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/Data Type/NI_Data Type.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Qualified Name Array To Single String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Qualified Name Array To Single String.vi"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="ChannelCommon.lvlib" Type="Library" URL="../../../Channels/ChannelCommon/ChannelCommon.lvlib"/>
			<Item Name="ChannelRegistrar.lvlib" Type="Library" URL="../../../Channels/ChannelRegistrar/ChannelRegistrar.lvlib"/>
			<Item Name="CIF Configuration File.lvlib" Type="Library" URL="../../../CIFUtilities/CIFConfigurationFile/CIF Configuration File.lvlib"/>
			<Item Name="CIF_Manager_client.lvlib" Type="Library" URL="../../../CIFPluginManager/CIFPluginManager/gRPC/CIF_Manager_client/CIF_Manager_client.lvlib"/>
			<Item Name="CIF_NIChn.lvclass" Type="LVClass" URL="../../../Channels/CIF_NIChn/NIChn/CIF_NIChn.lvclass"/>
			<Item Name="CIF_NIChn_Double.lvclass" Type="LVClass" URL="../../../Channels/CIF_NIChn/Double/CIF_NIChn_Double.lvclass"/>
			<Item Name="CIF_NIChn_FifoCAN.lvclass" Type="LVClass" URL="../../../Channels/CIF_NIChn/FIFO_CAN/CIF_NIChn_FifoCAN.lvclass"/>
			<Item Name="CIF_NIChn_I64.lvclass" Type="LVClass" URL="../../../Channels/CIF_NIChn/I64/CIF_NIChn_I64.lvclass"/>
			<Item Name="CIF_NIChn_U64.lvclass" Type="LVClass" URL="../../../Channels/CIF_NIChn/U64/CIF_NIChn_U64.lvclass"/>
			<Item Name="CIFChannelMng.lvclass" Type="LVClass" URL="../../../Channels/CIFChannelMng/CIFChannelMng.lvclass"/>
			<Item Name="CIFChannels.lvclass" Type="LVClass" URL="../../../Channels/CIFChannels/CIFChannels.lvclass"/>
			<Item Name="CIFClocks.lvlib" Type="Library" URL="../../../CIFUtilities/CIFClocks/CIFClocks.lvlib"/>
			<Item Name="CIFCoreChannel_client.lvlib" Type="Library" URL="../../../CIFCore/Grpc/CIFCoreChannel_client/CIFCoreChannel_client.lvlib"/>
			<Item Name="CIFCoreChannel_server.lvlib" Type="Library" URL="../../../CIFCore/Grpc/CIFCoreChannel_server/CIFCoreChannel_server.lvlib"/>
			<Item Name="CIFCoreCommon.lvlib" Type="Library" URL="../../../CIFCore/Common/CIFCoreCommon.lvlib"/>
			<Item Name="CIFCoreOOB_Rx.lvclass" Type="LVClass" URL="../../../CIFCore/OOB/OOB_Rx/CIFCoreOOB_Rx.lvclass"/>
			<Item Name="CIFCoreOOB_Tx.lvclass" Type="LVClass" URL="../../../CIFCore/OOB/OOB_Tx/CIFCoreOOB_Tx.lvclass"/>
			<Item Name="CIFCorePlugin.lvclass" Type="LVClass" URL="../../../CIFCore/Class/CIFCorePlugin.lvclass"/>
			<Item Name="CIFCorePlugin_client.lvlib" Type="Library" URL="../../../CIFCore/Grpc/CIFCorePlugin_client/CIFCorePlugin_client.lvlib"/>
			<Item Name="CIFCorePlugin_server.lvlib" Type="Library" URL="../../../CIFCore/Grpc/CIFCorePlugin_server/CIFCorePlugin_server.lvlib"/>
			<Item Name="CIFCoreWrapper.lvlib" Type="Library" URL="../../../CIFCore/Grpc/CIFCoreWrapper/CIFCoreWrapper.lvlib"/>
			<Item Name="CIFCustomOOB_Tx.lvclass" Type="LVClass" URL="../../OOB/OOB_Tx/CIFCustomOOB_Tx.lvclass"/>
			<Item Name="CIFfifo.lvclass" Type="LVClass" URL="../../../Channels/ChannelCommon/CIFFIFO/CIFfifo.lvclass"/>
			<Item Name="CIFLogs.lvlib" Type="Library" URL="../../../CIFUtilities/CIFLogs/CIFLogs.lvlib"/>
			<Item Name="CIFManagerClientWrapper.lvlib" Type="Library" URL="../../../CIFPluginManager/CIFPluginManager/gRPC/CIF_Manager_Client_Wrapper/CIFManagerClientWrapper.lvlib"/>
			<Item Name="CIFOutOfBand.lvclass" Type="LVClass" URL="../../../CIFUtilities/CIFOutOfBand/CIFOutOfBand.lvclass"/>
			<Item Name="CIFTCustomOOB_Rx.lvclass" Type="LVClass" URL="../../OOB/OOB_Rx/CIFTCustomOOB_Rx.lvclass"/>
			<Item Name="CIFTemplatePlugin.lvclass" Type="LVClass" URL="../../Class/CIFTemplatePlugin.lvclass"/>
			<Item Name="CIFTemplatePlugin_server.lvlib" Type="Library" URL="../../Grpc/CIFTemplatePlugin_server/CIFTemplatePlugin_server.lvlib"/>
			<Item Name="CIFTemplatePluginCommon.lvlib" Type="Library" URL="../../Common/CIFTemplatePluginCommon.lvlib"/>
			<Item Name="Get Control From Type Descriptor.vi" Type="VI" URL="../../../CIFUtilities/Scripting/Update Enum/Get Control From Type Descriptor.vi"/>
			<Item Name="Update Enum.lvlib" Type="Library" URL="../../../CIFUtilities/Scripting/Update Enum/Update Enum.lvlib"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="CIFTemplatePluginRT" Type="Packed Library">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{A53570B8-EA03-43C2-A6E2-1D5C5A9E4FE8}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">CIFTemplatePluginRT</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/D/dev/builds/CIFTemplatePluginRT</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{E1B1FFA6-FD1A-43A9-B4CA-878D53F65E7D}</Property>
				<Property Name="Bld_targetDestDir" Type="Path">/a</Property>
				<Property Name="Bld_version.build" Type="Int">9</Property>
				<Property Name="Bld_version.minor" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">CIFTemplatePlugin.0.2.0.2.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">/a/CIFTemplatePlugin.0.2.0.2.lvlibp</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/a</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{3614014C-0AD5-4B6E-B85A-99DD2771AA1D}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/RT PXI Target/CIFTemplatePlugin.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_fileDescription" Type="Str">CIFTemplatePluginRT</Property>
				<Property Name="TgtF_internalName" Type="Str">CIFTemplatePluginRT</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2024 </Property>
				<Property Name="TgtF_productName" Type="Str">CIFTemplatePluginRT</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{6DA0406C-9AB0-4143-8ABB-FB8A9909FCC3}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">CIFTemplatePlugin.0.2.0.2.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
