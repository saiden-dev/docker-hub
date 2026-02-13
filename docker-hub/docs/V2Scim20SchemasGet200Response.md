# DockerHub::V2Scim20SchemasGet200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schemas** | **Array&lt;String&gt;** |  | [optional] |
| **total_results** | **Integer** |  | [optional] |
| **resources** | [**Array&lt;ScimSchema&gt;**](ScimSchema.md) |  | [optional] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::V2Scim20SchemasGet200Response.new(
  schemas: null,
  total_results: 1,
  resources: null
)
```

