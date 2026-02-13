# DockerHub::RepositoryGroupCreationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **Integer** | The ID of the organization group to grant access to |  |
| **permission** | **String** | The permission level to grant to the group: - read: Can view and pull from the repository - write: Can view, pull, and push to the repository - admin: Can view, pull, push, and manage repository settings  |  |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::RepositoryGroupCreationRequest.new(
  group_id: 12345,
  permission: write
)
```

