# DockerHub::V2OrgsOrgNameGroupsGet200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Float** |  | [optional] |
| **_next** | **String** |  | [optional] |
| **previous** | **String** |  | [optional] |
| **results** | [**Array&lt;OrgGroup&gt;**](OrgGroup.md) |  | [optional] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::V2OrgsOrgNameGroupsGet200Response.new(
  count: 1,
  _next: null,
  previous: null,
  results: null
)
```

