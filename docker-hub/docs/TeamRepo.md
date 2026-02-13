# DockerHub::TeamRepo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_name** | **String** | Name of the group | [optional] |
| **permission** | **String** | Repo access permission | [optional] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::TeamRepo.new(
  group_name: null,
  permission: null
)
```

