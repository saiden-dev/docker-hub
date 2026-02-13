# DockerHub::AuditLogAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of audit log action. | [optional] |
| **description** | **String** | Description of audit log action. | [optional] |
| **label** | **String** | Label for audit log action. | [optional] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::AuditLogAction.new(
  name: null,
  description: null,
  label: null
)
```

