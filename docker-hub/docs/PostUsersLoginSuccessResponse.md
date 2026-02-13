# DockerHub::PostUsersLoginSuccessResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** | Created authentication token. This token can be used in the HTTP Authorization header as a JWT to authenticate with the Docker Hub APIs.  | [optional] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::PostUsersLoginSuccessResponse.new(
  token: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c
)
```

