# DockerHub::Layer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **digest** | **String** | image layer digest | [optional] |
| **size** | **Integer** | size of the layer | [optional] |
| **instruction** | **String** | Dockerfile instruction | [optional] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::Layer.new(
  digest: null,
  size: null,
  instruction: null
)
```

