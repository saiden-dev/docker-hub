# DockerHub::LegacyEmailAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Float** |  | [optional] |
| **user_id** | **Float** |  | [optional] |
| **email** | **String** |  | [optional] |
| **verified** | **Boolean** |  | [optional] |
| **primary** | **Boolean** |  | [optional] |
| **user** | **String** |  | [optional] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::LegacyEmailAddress.new(
  id: null,
  user_id: null,
  email: dockeruser@docker.com,
  verified: null,
  primary: null,
  user: dockeruser
)
```

