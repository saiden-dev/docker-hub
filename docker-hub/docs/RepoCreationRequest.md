# DockerHub::RepoCreationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the repository. Must be 2-255 characters long and may only include  alphanumeric characters, periods (.), underscores (_), or hyphens (-).  Letters must be lowercase.  |  |
| **namespace** | **String** | The namespace where the repository will be created |  |
| **description** | **String** | Short description of the repository | [optional] |
| **full_description** | **String** | Detailed description of the repository | [optional] |
| **registry** | **String** | The registry where the repository will be hosted | [optional] |
| **is_private** | **Boolean** | Whether the repository should be private | [optional][default to false] |

## Example

```ruby
require 'docker-hub'

instance = DockerHub::RepoCreationRequest.new(
  name: my-app,
  namespace: myorganization,
  description: A sample application repository,
  full_description: This is a comprehensive description of my application repository that contains additional details about the project, its purpose, usage instructions, and other relevant information.,
  registry: docker.io,
  is_private: false
)
```

