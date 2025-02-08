from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from typing import ClassVar as _ClassVar, Iterable as _Iterable, Mapping as _Mapping, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class Direction(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    PUBLISHER: _ClassVar[Direction]
    SUBSCRIBER: _ClassVar[Direction]
PUBLISHER: Direction
SUBSCRIBER: Direction

class Channel(_message.Message):
    __slots__ = ("name", "direction", "type", "custom_config", "connected", "connected_name", "forced")
    NAME_FIELD_NUMBER: _ClassVar[int]
    DIRECTION_FIELD_NUMBER: _ClassVar[int]
    TYPE_FIELD_NUMBER: _ClassVar[int]
    CUSTOM_CONFIG_FIELD_NUMBER: _ClassVar[int]
    CONNECTED_FIELD_NUMBER: _ClassVar[int]
    CONNECTED_NAME_FIELD_NUMBER: _ClassVar[int]
    FORCED_FIELD_NUMBER: _ClassVar[int]
    name: str
    direction: Direction
    type: str
    custom_config: bytes
    connected: bool
    connected_name: str
    forced: bool
    def __init__(self, name: _Optional[str] = ..., direction: _Optional[_Union[Direction, str]] = ..., type: _Optional[str] = ..., custom_config: _Optional[bytes] = ..., connected: bool = ..., connected_name: _Optional[str] = ..., forced: bool = ...) -> None: ...

class Channels(_message.Message):
    __slots__ = ("channels",)
    CHANNELS_FIELD_NUMBER: _ClassVar[int]
    channels: _containers.RepeatedCompositeFieldContainer[Channel]
    def __init__(self, channels: _Optional[_Iterable[_Union[Channel, _Mapping]]] = ...) -> None: ...

class ConnectSubscriber(_message.Message):
    __slots__ = ("subscriber_name", "publisher_name", "custom_connect")
    SUBSCRIBER_NAME_FIELD_NUMBER: _ClassVar[int]
    PUBLISHER_NAME_FIELD_NUMBER: _ClassVar[int]
    CUSTOM_CONNECT_FIELD_NUMBER: _ClassVar[int]
    subscriber_name: str
    publisher_name: str
    custom_connect: bytes
    def __init__(self, subscriber_name: _Optional[str] = ..., publisher_name: _Optional[str] = ..., custom_connect: _Optional[bytes] = ...) -> None: ...

class ForceChannel(_message.Message):
    __slots__ = ("channel_name", "force", "force_data")
    CHANNEL_NAME_FIELD_NUMBER: _ClassVar[int]
    FORCE_FIELD_NUMBER: _ClassVar[int]
    FORCE_DATA_FIELD_NUMBER: _ClassVar[int]
    channel_name: str
    force: bool
    force_data: bytes
    def __init__(self, channel_name: _Optional[str] = ..., force: bool = ..., force_data: _Optional[bytes] = ...) -> None: ...

class Status(_message.Message):
    __slots__ = ("code", "message")
    CODE_FIELD_NUMBER: _ClassVar[int]
    MESSAGE_FIELD_NUMBER: _ClassVar[int]
    code: int
    message: str
    def __init__(self, code: _Optional[int] = ..., message: _Optional[str] = ...) -> None: ...

class Empty(_message.Message):
    __slots__ = ()
    def __init__(self) -> None: ...
