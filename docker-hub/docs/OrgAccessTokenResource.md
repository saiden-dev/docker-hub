# DockerHub::OrgAccessTokenResource

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of resource | [optional] |
| **path** | **String** | The path of the resource. The format of this will change depending on the type of resource.  To reference public repositories, use &#x60;*/*/public&#x60; as the path value.  | [optional] |
| **scopes** | **Array&lt;String&gt;** | The scopes this token has access to | [optional] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::OrgAccessTokenResource.new(
  type: TYPE_REPO,
  path: myorg/myrepo,
  scopes: null
)
```

