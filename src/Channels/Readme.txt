Steps when creating a new channel using existing supported parent channel class (CIF_NIChn)

If datatype does not already exist (double, U64, I64, ...):
	If type is not a base LV type: 
		Then create a typedef in the "ChannelCommon" library.  Name format should be "Dataype xxx.ctl".
		Create flatten and unflatten libraries in the "ChannelCommon" library.
	Update CIFChannels with new dynamic dispatch if new datatype.  (This is needed since PPLs with classes can't support VIMs).
	Update CIFCore class (Channel RW) with new wrappers if new datatype.  (This is needed since PPLs with classes can't support VIMs).

Create new child class (CIF_NIChn supported as parent today).
	Update ChannelRegistrar with new type for the channel (Registered Channel Types.ctl)
	Update "Create Registered Channel Types.vi" to automatically create channels for the new class.



