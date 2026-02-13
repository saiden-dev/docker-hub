# DockerHub::V2Scim20UsersIdPutRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schemas** | **Array&lt;String&gt;** |  |  |
| **name** | [**ScimUserName**](ScimUserName.md) | If this is omitted from the request, the update will skip the update on it. We will only ever change the name, but not clear it. | [optional] |
| **enabled** | **Boolean** | If this is omitted from the request, it will default to false resulting in a deactivated user. | [optional][default to false] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::V2Scim20UsersIdPutRequest.new(
  schemas: null,
  name: null,
  enabled: null
)
```

