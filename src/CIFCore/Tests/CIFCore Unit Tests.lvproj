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
		<Item Name="dependencies" Type="Folder">
			<Item Name="CIFClocks.lvlib" Type="Library" URL="../../../CIFUtilities/CIFClocks/CIFClocks.lvlib"/>
			<Item Name="CIFCoreOOB_Rx.lvclass" Type="LVClass" URL="../../OOB/OOB_Rx/CIFCoreOOB_Rx.lvclass"/>
			<Item Name="CIFCoreOOB_Tx.lvclass" Type="LVClass" URL="../../OOB/OOB_Tx/CIFCoreOOB_Tx.lvclass"/>
			<Item Name="CIFLogs.lvlib" Type="Library" URL="../../../CIFUtilities/CIFLogs/CIFLogs.lvlib"/>
		</Item>
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
				<Item Name="LVMapReplaceAction.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVMapReplaceAction.ctl"/>
				<Item Name="CIFChannelCore.lvlib" Type="Library" URL="/&lt;vilib&gt;/CIFChannels/CIFChannelCore.lvlib"/>
				<Item Name="Assert Error Cluster Type.vim" Type="VI" URL="/&lt;vilib&gt;/Utility/TypeAssert/Assert Error Cluster Type.vim"/>
				<Item Name="Assert Signed Integer Type.vim" Type="VI" URL="/&lt;vilib&gt;/Utility/TypeAssert/Assert Signed Integer Type.vim"/>
			</Item>
			<Item Name="user.lib" Type="Folder">
				<Item Name="openg_error.lvlib" Type="Library" URL="/&lt;userlib&gt;/_OpenG.lib/error/error.llb/openg_error.lvlib"/>
				<Item Name="openg_variant.lvlib" Type="Library" URL="/&lt;userlib&gt;/_OpenG.lib/lvdata/lvdata.llb/openg_variant.lvlib"/>
			</Item>
			<Item Name="CIFCorePlugin_client.lvlib" Type="Library" URL="../../Grpc/CIFCorePlugin_client/CIFCorePlugin_client.lvlib"/>
			<Item Name="CIFCoreCommon.lvlib" Type="Library" URL="../../Common/CIFCoreCommon.lvlib"/>
			<Item Name="CIFOutOfBand.lvclass" Type="LVClass" URL="../../../CIFUtilities/CIFOutOfBand/CIFOutOfBand.lvclass"/>
			<Item Name="CIFCorePlugin.lvclass" Type="LVClass" URL="../../Class/CIFCorePlugin.lvclass"/>
			<Item Name="CIFCorePlugin_server.lvlib" Type="Library" URL="../../Grpc/CIFCorePlugin_server/CIFCorePlugin_server.lvlib"/>
			<Item Name="CIFChannels.lvclass" Type="LVClass" URL="../../../CIFUtilities/CIFChannels/CIFChannels.lvclass"/>
			<Item Name="CIFTagDouble.lvclass" Type="LVClass" URL="../../../Channels/CIFTag/Double/CIFTagDouble.lvclass"/>
			<Item Name="CIFTag.lvclass" Type="LVClass" URL="../../../Channels/CIFTag/CIFTag/CIFTag.lvclass"/>
			<Item Name="CIFTagU64.lvclass" Type="LVClass" URL="../../../Channels/CIFTag/U64/CIFTagU64.lvclass"/>
			<Item Name="CIFTagI64.lvclass" Type="LVClass" URL="../../../Channels/CIFTag/I64/CIFTagI64.lvclass"/>
			<Item Name="CIFChannelMng.lvclass" Type="LVClass" URL="../../../CIFUtilities/CIFChannelMng/CIFChannelMng.lvclass"/>
			<Item Name="ChannelRegistrar.lvlib" Type="Library" URL="../../../Channels/ChannelRegistrar/ChannelRegistrar.lvlib"/>
			<Item Name="CIFCoreChannel_server.lvlib" Type="Library" URL="../../Grpc/CIFCoreChannel_server/CIFCoreChannel_server.lvlib"/>
			<Item Name="CIFCoreChannel_client.lvlib" Type="Library" URL="../../Grpc/CIFCoreChannel_client/CIFCoreChannel_client.lvlib"/>
			<Item Name="CIFCoreWrapper.lvlib" Type="Library" URL="../../Grpc/CIFCoreWrapper/CIFCoreWrapper.lvlib"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
