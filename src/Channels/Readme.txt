Steps when creating a new channel using existing supported base channel class (CIFTag or CIFFifo)

If datatype does not already exist for other channels:
If type is not a base LV type and does not already exist, then create a typedef in the "ChannelRegistrar" library.  Name format should be "Dataype xxx.ctl".
Update CIFChannels with new dynamic dispatch if new datatype.  (This is needed since PPLs with classes can't support VIMs).
Update CIFCore class (Channel RW) with new wrappers if new datatype.  (This is needed since PPLs with classes can't support VIMs).

Create the specific channel class (CIFTag and CIFFifo supported today to use as examples).
Update ChannelRegistrar with new type for the channel (Registered Channel Types.ctl) and update "Create Registered Channel Types.vi" to automatically create channels for the new class.



