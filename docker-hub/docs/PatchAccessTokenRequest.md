# DockerHub::PatchAccessTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token_label** | **String** |  | [optional] |
| **is_active** | **Boolean** |  | [optional] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::PatchAccessTokenRequest.new(
  token_label: My read only token,
  is_active: false
)
```

