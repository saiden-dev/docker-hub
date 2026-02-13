# DockerHub::ScimResourceType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schemas** | **Array&lt;String&gt;** |  | [optional] |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **endpoint** | **String** |  | [optional] |
| **schema** | **String** |  | [optional] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::ScimResourceType.new(
  schemas: [&quot;urn:ietf:params:scim:schemas:core:2.0:ResourceType&quot;],
  id: User,
  name: User,
  description: User,
  endpoint: /Users,
  schema: urn:ietf:params:scim:schemas:core:2.0:User
)
```

