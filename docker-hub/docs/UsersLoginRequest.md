# DockerHub::UsersLoginRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | The username of the Docker Hub account to authenticate with. |  |
| **password** | **String** | The password or personal access token (PAT) of the Docker Hub account to authenticate with.  |  |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::UsersLoginRequest.new(
  username: myusername,
  password: p@ssw0rd
)
```

