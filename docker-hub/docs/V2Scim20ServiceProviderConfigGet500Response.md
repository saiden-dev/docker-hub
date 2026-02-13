# DockerHub::V2Scim20ServiceProviderConfigGet500Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **Object** |  | [optional] |
| **schemas** | **Array&lt;String&gt;** |  | [optional] |
| **detail** | **String** | Details about why the request failed. | [optional] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::V2Scim20ServiceProviderConfigGet500Response.new(
  status: 500,
  schemas: null,
  detail: null
)
```

