# DockerHub::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errinfo** | **Array&lt;String&gt;** |  | [optional] |
| **detail** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::Error.new(
  errinfo: null,
  detail: null,
  message: null
)
```

