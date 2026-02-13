# DockerHub::RepositoryGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_name** | **String** | The name of the group | [optional] |
| **permission** | **String** | The permission level granted to the group | [optional] |
| **group_id** | **Integer** | The ID of the group | [optional] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::RepositoryGroup.new(
  group_name: developers,
  permission: write,
  group_id: 12345
)
```

