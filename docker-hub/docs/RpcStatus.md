# DockerHub::RpcStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** |  | [optional] |
| **message** | **String** |  | [optional] |
| **details** | [**Array&lt;ProtobufAny&gt;**](ProtobufAny.md) |  | [optional] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::RpcStatus.new(
  code: null,
  message: null,
  details: null
)
```

