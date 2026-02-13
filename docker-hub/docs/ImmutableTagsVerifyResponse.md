# DockerHub::ImmutableTagsVerifyResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Array&lt;String&gt;** | List of tags that match the provided regex pattern |  |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::ImmutableTagsVerifyResponse.new(
  tags: [&quot;v1.0.0&quot;,&quot;v2.1.3&quot;,&quot;latest&quot;]
)
```

