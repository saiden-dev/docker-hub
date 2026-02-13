# DockerHub::V2OrgsNameSettingsPutRequestRestrictedImages

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Whether or not to restrict image usage for users in the organization. |  |
| **allow_official_images** | **Boolean** | Allow usage of official images if \&quot;enabled\&quot; is &#x60;true&#x60;. |  |
| **allow_verified_publishers** | **Boolean** | Allow usage of verified publisher images if \&quot;enabled\&quot; is &#x60;true&#x60;. |  |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::V2OrgsNameSettingsPutRequestRestrictedImages.new(
  enabled: true,
  allow_official_images: true,
  allow_verified_publishers: true
)
```

