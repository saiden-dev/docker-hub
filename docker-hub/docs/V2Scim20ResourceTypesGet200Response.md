# DockerHub::V2Scim20ResourceTypesGet200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schemas** | **Array&lt;String&gt;** |  | [optional] |
| **total_results** | **Integer** |  | [optional] |
| **resources** | [**Array&lt;ScimResourceType&gt;**](ScimResourceType.md) |  | [optional] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::V2Scim20ResourceTypesGet200Response.new(
  schemas: null,
  total_results: 1,
  resources: null
)
```

