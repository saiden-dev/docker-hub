# DockerHub::UpdateRepositoryImmutableTagsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **immutable_tags** | **Boolean** | Whether immutable tags are enabled |  |
| **immutable_tags_rules** | **Array&lt;String&gt;** | List of immutable tag rules |  |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::UpdateRepositoryImmutableTagsRequest.new(
  immutable_tags: null,
  immutable_tags_rules: [&quot;v.*&quot;,&quot;.*-RELEASE&quot;]
)
```

