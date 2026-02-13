# DockerHub::ImmutableTagsVerifyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **regex** | **String** | Immutable tags rule regex pattern. Must match format: [a-z0-9]+((\\\\.|_|__|-+)[a-z0-9]+)*(\\/[a-z0-9]+((\\\\.|_|__|-+)[a-z0-9]+)*)* |  |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::ImmutableTagsVerifyRequest.new(
  regex: v.*
)
```

