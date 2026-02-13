# DockerHub::OrgSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **restricted_images** | [**RestrictedImages**](RestrictedImages.md) |  | [optional] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::OrgSettings.new(
  restricted_images: null
)
```

