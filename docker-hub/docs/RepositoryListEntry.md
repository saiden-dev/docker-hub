# DockerHub::RepositoryListEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the repository | [optional] |
| **namespace** | **String** | Namespace (organization or username) that owns the repository | [optional] |
| **repository_type** | **String** | Type of repository | [optional] |
| **status** | **Integer** | Repository status code | [optional] |
| **status_description** | **String** | Human-readable repository status | [optional] |
| **description** | **String** | Repository description | [optional] |
| **is_private** | **Boolean** | Whether the repository is private | [optional] |
| **star_count** | **Integer** | Number of users who starred this repository | [optional] |
| **pull_count** | **Integer** | Total number of pulls for this repository | [optional] |
| **last_updated** | **Time** | ISO 8601 timestamp of when the repository was last updated | [optional] |
| **last_modified** | **Time** | ISO 8601 timestamp of when the repository was last modified | [optional] |
| **date_registered** | **Time** | ISO 8601 timestamp of when the repository was created | [optional] |
| **affiliation** | **String** | User&#39;s affiliation with the repository (empty string if no affiliation) | [optional] |
| **media_types** | **Array&lt;String&gt;** | Media types supported by this repository | [optional] |
| **content_types** | **Array&lt;String&gt;** | Content types supported by this repository | [optional] |
| **categories** | [**Array&lt;Category&gt;**](Category.md) | Categories associated with this repository | [optional] |
| **storage_size** | **Integer** | Storage size in bytes used by this repository | [optional] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::RepositoryListEntry.new(
  name: hello-world,
  namespace: docker,
  repository_type: image,
  status: 1,
  status_description: active,
  description: Hello World! (an example of minimal Dockerization),
  is_private: false,
  star_count: 1234,
  pull_count: 50000000,
  last_updated: 2023-12-01T10:30Z,
  last_modified: 2023-12-01T10:30Z,
  date_registered: 2013-06-19T19:07:54Z,
  affiliation: ,
  media_types: [&quot;application/vnd.docker.plugin.v1+json&quot;],
  content_types: [&quot;plugin&quot;],
  categories: [],
  storage_size: 232719127
)
```

