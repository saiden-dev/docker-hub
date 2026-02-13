# DockerHub::Category

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Human-readable name of the category |  |
| **slug** | **String** | URL-friendly identifier for the category |  |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::Category.new(
  name: Databases,
  slug: databases
)
```

