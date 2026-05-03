<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="21008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Accessors Loopback Test.vi" Type="VI" URL="../Accessors Loopback Test.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="grpc-lvsupport-release.lvlib" Type="Library" URL="/&lt;vilib&gt;/gRPC/LabVIEW gRPC Library/grpc-lvsupport-release.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="1D String Array to Delimited String.vi" Type="VI" URL="/&lt;vilib&gt;/AdvancedString/1D String Array to Delimited String.vi"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="Get LV Class Default Value By Name.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Default Value By Name.vi"/>
				<Item Name="Get LV Class Name.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Name.vi"/>
				<Item Name="JKI JSON Serialization.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/_JKI.lib/Serialization/JSON/JKI JSON Serialization.lvlib"/>
				<Item Name="JKI Serialization.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/_JKI.lib/Serialization/Core/JKI Serialization.lvlib"/>
				<Item Name="JKI Unicode.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/_JKI.lib/Unicode/JKI Unicode.lvlib"/>
				<Item Name="LV70DateRecToTimeStamp.vi" Type="VI" URL="/&lt;vilib&gt;/_oldvers/_oldvers.llb/LV70DateRecToTimeStamp.vi"/>
				<Item Name="LVDateTimeRec.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVDateTimeRec.ctl"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
				<Item Name="NI_Data Type.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/Data Type/NI_Data Type.lvlib"/>
				<Item Name="Qualified Name Array To Single String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Qualified Name Array To Single String.vi"/>
				<Item Name="gRPC-servicer-release.lvlib" Type="Library" URL="/&lt;vilib&gt;/gRPC/LabVIEW gRPC Servicer/gRPC-servicer-release.lvlib"/>
				<Item Name="Assert Error Cluster Type.vim" Type="VI" URL="/&lt;vilib&gt;/Utility/TypeAssert/Assert Error Cluster Type.vim"/>
				<Item Name="LVMapReplaceAction.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVMapReplaceAction.ctl"/>
				<Item Name="Sort 1D Array.vim" Type="VI" URL="/&lt;vilib&gt;/Array/Sort 1D Array.vim"/>
				<Item Name="Less Functor.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Comparison/Less/Less Functor/Less Functor.lvclass"/>
				<Item Name="Less Comparable.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Comparison/Less/Less Comparable/Less Comparable.lvclass"/>
				<Item Name="Sort 1D Array Core.vim" Type="VI" URL="/&lt;vilib&gt;/Array/Helpers/Sort 1D Array Core.vim"/>
				<Item Name="Less.vim" Type="VI" URL="/&lt;vilib&gt;/Comparison/Less.vim"/>
				<Item Name="Time_CIF_U.lvlib" Type="Library" URL="/&lt;vilib&gt;/CIF Foundation/CIF Utilities/Time/Time_CIF_U.lvlib"/>
				<Item Name="Errors_CIF_U.lvlib" Type="Library" URL="/&lt;vilib&gt;/CIF Foundation/CIF Utilities/Errors/Errors_CIF_U.lvlib"/>
				<Item Name="Stats_CIF_U.lvlib" Type="Library" URL="/&lt;vilib&gt;/CIF Foundation/CIF Utilities/Statistics/Stats_CIF_U.lvlib"/>
				<Item Name="CIFChannels.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/CIF Foundation/CIF Channels Core/CIFChannels/CIFChannels.lvclass"/>
				<Item Name="ChannelCommon.lvlib" Type="Library" URL="/&lt;vilib&gt;/CIF Foundation/CIF Channels Core/ChannelCommon/ChannelCommon.lvlib"/>
				<Item Name="DataTypes_CIF_U.lvlib" Type="Library" URL="/&lt;vilib&gt;/CIF Foundation/CIF Utilities/DataTypes/DataTypes_CIF_U.lvlib"/>
				<Item Name="CIF_NI_CIPC.lvlib" Type="Library" URL="/&lt;vilib&gt;/CIF Foundation/CIF CIPC/CIF_NI_CIPC.lvlib"/>
				<Item Name="Create NI GUID.vi" Type="VI" URL="/&lt;vilib&gt;/string/Create NI GUID.vi"/>
				<Item Name="CIF_CIPC_Chn.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/CIF Foundation/CIF Channels Core/CIPC_Channels/CIF_CIPC_Chan/CIF_CIPC_Chn.lvclass"/>
				<Item Name="CIF_CIPC_Chn_I64.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/CIF Foundation/CIF Channels Core/CIPC_Channels/I64/CIF_CIPC_Chn_I64.lvclass"/>
				<Item Name="CIF_CIPC_Chn_U64.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/CIF Foundation/CIF Channels Core/CIPC_Channels/U64/CIF_CIPC_Chn_U64.lvclass"/>
				<Item Name="CIF_CIPC_Chn_Double.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/CIF Foundation/CIF Channels Core/CIPC_Channels/Double/CIF_CIPC_Chn_Double.lvclass"/>
				<Item Name="CIF_CIPC_Universal.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/CIF Foundation/CIF Channels Core/CIPC_Channels/FIFO_Universal/CIF_CIPC_Universal.lvclass"/>
				<Item Name="CIF_CIPC_Fifo_U8.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/CIF Foundation/CIF Channels Core/CIPC_Channels/FIFO_U8/CIF_CIPC_Fifo_U8.lvclass"/>
				<Item Name="CIF_CIPC_L2Enet.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/CIF Foundation/CIF Channels Core/CIPC_Channels/FIFO_L2Enet/CIF_CIPC_L2Enet.lvclass"/>
				<Item Name="CIF_CIPC_CAN.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/CIF Foundation/CIF Channels Core/CIPC_Channels/FIFO_CAN/CIF_CIPC_CAN.lvclass"/>
				<Item Name="CIF_CIPC_Fifo_DAQ.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/CIF Foundation/CIF Channels Core/CIPC_Channels/FIFO_DAQ/CIF_CIPC_Fifo_DAQ.lvclass"/>
				<Item Name="CIF_CIPC_Chn_String.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/CIF Foundation/CIF Channels Core/CIPC_Channels/String/CIF_CIPC_Chn_String.lvclass"/>
				<Item Name="Networking_CIF_U.lvlib" Type="Library" URL="/&lt;vilib&gt;/CIF Foundation/CIF Utilities/Networking/Networking_CIF_U.lvlib"/>
				<Item Name="Service Template.lvlib" Type="Library" URL="/&lt;vilib&gt;/gRPC/gRPC Server and Client Template [2]/Server Template/Service Template.lvlib"/>
				<Item Name="Bold Particular String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Bold Particular String.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
			</Item>
			<Item Name="user.lib" Type="Folder">
				<Item Name="openg_error.lvlib" Type="Library" URL="/&lt;userlib&gt;/_OpenG.lib/error/error.llb/openg_error.lvlib"/>
				<Item Name="openg_variant.lvlib" Type="Library" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/openg_variant.lvlib"/>
			</Item>
			<Item Name="CIFCorePlugin_client.lvlib" Type="Library" URL="../../Grpc/CIFCorePlugin_client/CIFCorePlugin_client.lvlib"/>
			<Item Name="CIFCoreCommon.lvlib" Type="Library" URL="../../Common/CIFCoreCommon.lvlib"/>
			<Item Name="CIFCorePlugin.lvclass" Type="LVClass" URL="../../Class/CIFCorePlugin.lvclass"/>
			<Item Name="CIFCorePlugin_server.lvlib" Type="Library" URL="../../Grpc/CIFCorePlugin_server/CIFCorePlugin_server.lvlib"/>
			<Item Name="ChannelRegistrar.lvlib" Type="Library" URL="../../../Channels/ChannelRegistrar/ChannelRegistrar.lvlib"/>
			<Item Name="CIFCoreChannel_server.lvlib" Type="Library" URL="../../Grpc/CIFCoreChannel_server/CIFCoreChannel_server.lvlib"/>
			<Item Name="CIFCoreChannel_client.lvlib" Type="Library" URL="../../Grpc/CIFCoreChannel_client/CIFCoreChannel_client.lvlib"/>
			<Item Name="CIFCoreWrapper.lvlib" Type="Library" URL="../../Grpc/CIFCoreWrapper/CIFCoreWrapper.lvlib"/>
			<Item Name="CIFChannelMng.lvclass" Type="LVClass" URL="../../../Channels/CIFChannelMng/CIFChannelMng.lvclass"/>
			<Item Name="CIF Configuration File.lvlib" Type="Library" URL="../../../CIFUtilities/CIFConfigurationFile/CIF Configuration File.lvlib"/>
			<Item Name="CIF_Manager_client.lvlib" Type="Library" URL="../../../CIFPluginManager/CIFPluginManager/gRPC/CIF_Manager_client/CIF_Manager_client.lvlib"/>
			<Item Name="CIFManagerClientWrapper.lvlib" Type="Library" URL="../../../CIFPluginManager/CIFPluginManager/gRPC/CIF_Manager_Client_Wrapper/CIFManagerClientWrapper.lvlib"/>
			<Item Name="CIF_UI.lvclass" Type="LVClass" URL="../../../CIFUI/CIF_UI.lvclass"/>
			<Item Name="CIFLogs.lvlib" Type="Library" URL="../../../CIFUtilities/CIFLogs/CIFLogs.lvlib"/>
			<Item Name="CIF_InstrumentStudio Plugin SDK.lvlib" Type="Library" URL="../../../Instrument Studio/PluginSDK/CIF_InstrumentStudio Plugin SDK.lvlib"/>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
