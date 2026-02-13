# DockerHub::ImmutableTagsSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether immutable tags are enabled |  |
| **rules** | **Array&lt;String&gt;** | List of immutable tag rules |  |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::ImmutableTagsSettings.new(
  enabled: null,
  rules: null
)
```

