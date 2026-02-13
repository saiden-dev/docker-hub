# DockerHub::ScimError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The status code for the response in string format. | [optional] |
| **schemas** | **Array&lt;String&gt;** |  | [optional] |
| **detail** | **String** | Details about why the request failed. | [optional] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::ScimError.new(
  status: null,
  schemas: null,
  detail: null
)
```

