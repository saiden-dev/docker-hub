# DockerHub::RepoPermissions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **read** | **Boolean** | Read permission |  |
| **write** | **Boolean** | Write permission |  |
| **admin** | **Boolean** | Admin permission |  |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::RepoPermissions.new(
  read: null,
  write: null,
  admin: null
)
```

