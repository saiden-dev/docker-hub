# DockerHub::GetAuditLogsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **logs** | [**Array&lt;AuditLog&gt;**](AuditLog.md) | List of audit log events. | [optional] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::GetAuditLogsResponse.new(
  logs: null
)
```

