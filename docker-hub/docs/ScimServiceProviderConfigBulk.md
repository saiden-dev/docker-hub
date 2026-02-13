# DockerHub::ScimServiceProviderConfigBulk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **supported** | **Boolean** |  | [optional] |
| **max_operations** | **Integer** |  | [optional] |
| **max_payload_size** | **Integer** |  | [optional] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::ScimServiceProviderConfigBulk.new(
  supported: false,
  max_operations: null,
  max_payload_size: null
)
```

