# DockerHub::PostUsers2FALoginErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **detail** | **String** | Description of the error. | [optional] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::PostUsers2FALoginErrorResponse.new(
  detail: Incorrect authentication credentials
)
```

