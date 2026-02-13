# DockerHub::RepositoryInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | Username of the repository owner |  |
| **name** | **String** | Repository name |  |
| **namespace** | **String** | Repository namespace |  |
| **repository_type** | **String** | Type of the repository | [optional] |
| **status** | **Integer** | Repository status code |  |
| **status_description** | **String** | Description of the repository status |  |
| **description** | **String** | Short description of the repository |  |
| **is_private** | **Boolean** | Whether the repository is private |  |
| **is_automated** | **Boolean** | Whether the repository has automated builds |  |
| **star_count** | **Integer** | Number of stars |  |
| **pull_count** | **Integer** | Number of pulls |  |
| **last_updated** | **Time** | ISO 8601 timestamp of when repository was last updated |  |
| **last_modified** | **Time** | ISO 8601 timestamp of when repository was last modified | [optional] |
| **date_registered** | **Time** | ISO 8601 timestamp of when repository was created |  |
| **collaborator_count** | **Integer** | Number of collaborators |  |
| **affiliation** | **String** | Repository affiliation | [optional] |
| **hub_user** | **String** | Hub user information | [optional] |
| **has_starred** | **Boolean** | Whether the current user has starred this repository |  |
| **full_description** | **String** | Full description of the repository | [optional] |
| **permissions** | [**RepoPermissions**](RepoPermissions.md) |  |  |
| **media_types** | **Array&lt;String&gt;** | Supported media types |  |
| **content_types** | **Array&lt;String&gt;** | Supported content types |  |
| **categories** | [**Array&lt;Category&gt;**](Category.md) | Repository categories |  |
| **immutable_tags_settings** | [**ImmutableTagsSettings**](ImmutableTagsSettings.md) |  |  |
| **storage_size** | **Integer** | Storage size in bytes | [optional] |
| **source** | **String** | Source of the repository, where it was created from | [optional] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::RepositoryInfo.new(
  user: null,
  name: null,
  namespace: null,
  repository_type: null,
  status: null,
  status_description: null,
  description: null,
  is_private: null,
  is_automated: null,
  star_count: null,
  pull_count: null,
  last_updated: 2021-01-05T21:06:53.506400Z,
  last_modified: 2021-01-05T21:06:53.506400Z,
  date_registered: 2021-01-05T21:06:53.506400Z,
  collaborator_count: null,
  affiliation: null,
  hub_user: null,
  has_starred: null,
  full_description: null,
  permissions: null,
  media_types: null,
  content_types: null,
  categories: null,
  immutable_tags_settings: null,
  storage_size: null,
  source: null
)
```

