# DockerHub::GetAuditActionsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actions** | [**Hash&lt;String, AuditLogActions&gt;**](AuditLogActions.md) | Map of audit log actions. | [optional] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::GetAuditActionsResponse.new(
  actions: null
)
```

