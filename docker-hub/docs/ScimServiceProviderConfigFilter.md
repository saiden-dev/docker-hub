# DockerHub::ScimServiceProviderConfigFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **supported** | **Boolean** |  | [optional] |
| **max_results** | **Integer** |  | [optional] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::ScimServiceProviderConfigFilter.new(
  supported: true,
  max_results: 99999
)
```

