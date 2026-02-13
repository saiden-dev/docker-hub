# DockerHub::RepositoriesApi

All URIs are relative to *https://hub.docker.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**check_repository**](RepositoriesApi.md#check_repository) | **HEAD** /v2/namespaces/{namespace}/repositories/{repository} | Check repository in a namespace |
| [**create_repository**](RepositoriesApi.md#create_repository) | **POST** /v2/namespaces/{namespace}/repositories | Create a new repository |
| [**create_repository_group**](RepositoriesApi.md#create_repository_group) | **POST** /v2/repositories/{namespace}/{repository}/groups | Assign a group (Team) to a repository for access |
| [**get_repository**](RepositoriesApi.md#get_repository) | **GET** /v2/namespaces/{namespace}/repositories/{repository} | Get repository in a namespace |
| [**get_repository_tag**](RepositoriesApi.md#get_repository_tag) | **GET** /v2/namespaces/{namespace}/repositories/{repository}/tags/{tag} | Read repository tag |
| [**list_namespace_repositories**](RepositoriesApi.md#list_namespace_repositories) | **GET** /v2/namespaces/{namespace}/repositories | List repositories in a namespace |
| [**list_repository_tags**](RepositoriesApi.md#list_repository_tags) | **GET** /v2/namespaces/{namespace}/repositories/{repository}/tags | List repository tags |
| [**update_repository_immutable_tags**](RepositoriesApi.md#update_repository_immutable_tags) | **PATCH** /v2/namespaces/{namespace}/repositories/{repository}/immutabletags | Update repository immutable tags |
| [**v2_namespaces_namespace_repositories_repository_tags_head**](RepositoriesApi.md#v2_namespaces_namespace_repositories_repository_tags_head) | **HEAD** /v2/namespaces/{namespace}/repositories/{repository}/tags | Check repository tags |
| [**v2_namespaces_namespace_repositories_repository_tags_tag_head**](RepositoriesApi.md#v2_namespaces_namespace_repositories_repository_tags_tag_head) | **HEAD** /v2/namespaces/{namespace}/repositories/{repository}/tags/{tag} | Check repository tag |
| [**verify_repository_immutable_tags**](RepositoriesApi.md#verify_repository_immutable_tags) | **POST** /v2/namespaces/{namespace}/repositories/{repository}/immutabletags/verify | Verify repository immutable tags |


## check_repository

> <RepositoryInfo> check_repository(namespace, repository)

Check repository in a namespace

Check a repository within the specified namespace (organization or user).  Public repositories are accessible to everyone, while private repositories require appropriate authentication and permissions. 

### Examples

```ruby
require 'time'
require 'docker-hub'
# setup authorization
DockerHub.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DockerHub::RepositoriesApi.new
namespace = 'namespace_example' # String | 
repository = 'repository_example' # String | 

begin
  # Check repository in a namespace
  result = api_instance.check_repository(namespace, repository)
  p result
rescue DockerHub::ApiError => e
  puts "Error when calling RepositoriesApi->check_repository: #{e}"
end
```

#### Using the check_repository_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RepositoryInfo>, Integer, Hash)> check_repository_with_http_info(namespace, repository)

```ruby
begin
  # Check repository in a namespace
  data, status_code, headers = api_instance.check_repository_with_http_info(namespace, repository)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RepositoryInfo>
rescue DockerHub::ApiError => e
  puts "Error when calling RepositoriesApi->check_repository_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **namespace** | **String** |  |  |
| **repository** | **String** |  |  |

### Return type

[**RepositoryInfo**](RepositoryInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_repository

> <RepositoryInfo> create_repository(namespace, repo_creation_request)

Create a new repository

Creates a new repository within the specified namespace. The repository will be created with the provided metadata including name, description, and privacy settings. 

### Examples

```ruby
require 'time'
require 'docker-hub'

api_instance = DockerHub::RepositoriesApi.new
namespace = 'namespace_example' # String | 
repo_creation_request = DockerHub::RepoCreationRequest.new({name: 'my-app', namespace: 'myorganization'}) # RepoCreationRequest | 

begin
  # Create a new repository
  result = api_instance.create_repository(namespace, repo_creation_request)
  p result
rescue DockerHub::ApiError => e
  puts "Error when calling RepositoriesApi->create_repository: #{e}"
end
```

#### Using the create_repository_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RepositoryInfo>, Integer, Hash)> create_repository_with_http_info(namespace, repo_creation_request)

```ruby
begin
  # Create a new repository
  data, status_code, headers = api_instance.create_repository_with_http_info(namespace, repo_creation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RepositoryInfo>
rescue DockerHub::ApiError => e
  puts "Error when calling RepositoriesApi->create_repository_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **namespace** | **String** |  |  |
| **repo_creation_request** | [**RepoCreationRequest**](RepoCreationRequest.md) |  |  |

### Return type

[**RepositoryInfo**](RepositoryInfo.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_repository_group

> <RepositoryGroup> create_repository_group(namespace, repository, repository_group_creation_request)

Assign a group (Team) to a repository for access

### Examples

```ruby
require 'time'
require 'docker-hub'
# setup authorization
DockerHub.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DockerHub::RepositoriesApi.new
namespace = 'namespace_example' # String | 
repository = 'repository_example' # String | 
repository_group_creation_request = DockerHub::RepositoryGroupCreationRequest.new({group_id: 12345, permission: 'read'}) # RepositoryGroupCreationRequest | 

begin
  # Assign a group (Team) to a repository for access
  result = api_instance.create_repository_group(namespace, repository, repository_group_creation_request)
  p result
rescue DockerHub::ApiError => e
  puts "Error when calling RepositoriesApi->create_repository_group: #{e}"
end
```

#### Using the create_repository_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RepositoryGroup>, Integer, Hash)> create_repository_group_with_http_info(namespace, repository, repository_group_creation_request)

```ruby
begin
  # Assign a group (Team) to a repository for access
  data, status_code, headers = api_instance.create_repository_group_with_http_info(namespace, repository, repository_group_creation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RepositoryGroup>
rescue DockerHub::ApiError => e
  puts "Error when calling RepositoriesApi->create_repository_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **namespace** | **String** |  |  |
| **repository** | **String** |  |  |
| **repository_group_creation_request** | [**RepositoryGroupCreationRequest**](RepositoryGroupCreationRequest.md) |  |  |

### Return type

[**RepositoryGroup**](RepositoryGroup.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_repository

> <RepositoryInfo> get_repository(namespace, repository)

Get repository in a namespace

Returns a repository within the specified namespace (organization or user).  Public repositories are accessible to everyone, while private repositories require appropriate authentication and permissions. 

### Examples

```ruby
require 'time'
require 'docker-hub'
# setup authorization
DockerHub.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DockerHub::RepositoriesApi.new
namespace = 'namespace_example' # String | 
repository = 'repository_example' # String | 

begin
  # Get repository in a namespace
  result = api_instance.get_repository(namespace, repository)
  p result
rescue DockerHub::ApiError => e
  puts "Error when calling RepositoriesApi->get_repository: #{e}"
end
```

#### Using the get_repository_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RepositoryInfo>, Integer, Hash)> get_repository_with_http_info(namespace, repository)

```ruby
begin
  # Get repository in a namespace
  data, status_code, headers = api_instance.get_repository_with_http_info(namespace, repository)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RepositoryInfo>
rescue DockerHub::ApiError => e
  puts "Error when calling RepositoriesApi->get_repository_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **namespace** | **String** |  |  |
| **repository** | **String** |  |  |

### Return type

[**RepositoryInfo**](RepositoryInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_repository_tag

> <Tag> get_repository_tag(namespace, repository, tag)

Read repository tag

### Examples

```ruby
require 'time'
require 'docker-hub'
# setup authorization
DockerHub.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DockerHub::RepositoriesApi.new
namespace = 'namespace_example' # String | 
repository = 'repository_example' # String | 
tag = 'tag_example' # String | 

begin
  # Read repository tag
  result = api_instance.get_repository_tag(namespace, repository, tag)
  p result
rescue DockerHub::ApiError => e
  puts "Error when calling RepositoriesApi->get_repository_tag: #{e}"
end
```

#### Using the get_repository_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tag>, Integer, Hash)> get_repository_tag_with_http_info(namespace, repository, tag)

```ruby
begin
  # Read repository tag
  data, status_code, headers = api_instance.get_repository_tag_with_http_info(namespace, repository, tag)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tag>
rescue DockerHub::ApiError => e
  puts "Error when calling RepositoriesApi->get_repository_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **namespace** | **String** |  |  |
| **repository** | **String** |  |  |
| **tag** | **String** |  |  |

### Return type

[**Tag**](Tag.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_namespace_repositories

> <ListRepositoriesResponse> list_namespace_repositories(namespace, opts)

List repositories in a namespace

Returns a list of repositories within the specified namespace (organization or user).  Public repositories are accessible to everyone, while private repositories require appropriate authentication and permissions. 

### Examples

```ruby
require 'time'
require 'docker-hub'
# setup authorization
DockerHub.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DockerHub::RepositoriesApi.new
namespace = 'namespace_example' # String | 
opts = {
  page: 56, # Integer | Page number to get. Defaults to 1.
  page_size: 56, # Integer | Number of repositories to get per page. Defaults to 10. Max of 100.
  name: 'name_example', # String | Filter repositories by name (partial match).
  ordering: 'name' # String | Order repositories by the specified field. Prefix with '-' for descending order. Available options: - `name` / `-name`: Repository name (ascending/descending) - `last_updated` / `-last_updated`: Last update time (ascending/descending) - `pull_count` / `-pull_count`: Number of pulls (ascending/descending) 
}

begin
  # List repositories in a namespace
  result = api_instance.list_namespace_repositories(namespace, opts)
  p result
rescue DockerHub::ApiError => e
  puts "Error when calling RepositoriesApi->list_namespace_repositories: #{e}"
end
```

#### Using the list_namespace_repositories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListRepositoriesResponse>, Integer, Hash)> list_namespace_repositories_with_http_info(namespace, opts)

```ruby
begin
  # List repositories in a namespace
  data, status_code, headers = api_instance.list_namespace_repositories_with_http_info(namespace, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListRepositoriesResponse>
rescue DockerHub::ApiError => e
  puts "Error when calling RepositoriesApi->list_namespace_repositories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **namespace** | **String** |  |  |
| **page** | **Integer** | Page number to get. Defaults to 1. | [optional][default to 1] |
| **page_size** | **Integer** | Number of repositories to get per page. Defaults to 10. Max of 100. | [optional][default to 10] |
| **name** | **String** | Filter repositories by name (partial match). | [optional] |
| **ordering** | **String** | Order repositories by the specified field. Prefix with &#39;-&#39; for descending order. Available options: - &#x60;name&#x60; / &#x60;-name&#x60;: Repository name (ascending/descending) - &#x60;last_updated&#x60; / &#x60;-last_updated&#x60;: Last update time (ascending/descending) - &#x60;pull_count&#x60; / &#x60;-pull_count&#x60;: Number of pulls (ascending/descending)  | [optional] |

### Return type

[**ListRepositoriesResponse**](ListRepositoriesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_repository_tags

> <PaginatedTags> list_repository_tags(namespace, repository, opts)

List repository tags

### Examples

```ruby
require 'time'
require 'docker-hub'
# setup authorization
DockerHub.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DockerHub::RepositoriesApi.new
namespace = 'namespace_example' # String | 
repository = 'repository_example' # String | 
opts = {
  page: 56, # Integer | Page number to get. Defaults to 1.
  page_size: 56 # Integer | Number of items to get per page. Defaults to 10. Max of 100.
}

begin
  # List repository tags
  result = api_instance.list_repository_tags(namespace, repository, opts)
  p result
rescue DockerHub::ApiError => e
  puts "Error when calling RepositoriesApi->list_repository_tags: #{e}"
end
```

#### Using the list_repository_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedTags>, Integer, Hash)> list_repository_tags_with_http_info(namespace, repository, opts)

```ruby
begin
  # List repository tags
  data, status_code, headers = api_instance.list_repository_tags_with_http_info(namespace, repository, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedTags>
rescue DockerHub::ApiError => e
  puts "Error when calling RepositoriesApi->list_repository_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **namespace** | **String** |  |  |
| **repository** | **String** |  |  |
| **page** | **Integer** | Page number to get. Defaults to 1. | [optional] |
| **page_size** | **Integer** | Number of items to get per page. Defaults to 10. Max of 100. | [optional] |

### Return type

[**PaginatedTags**](PaginatedTags.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_repository_immutable_tags

> <RepositoryInfo> update_repository_immutable_tags(namespace, repository, update_repository_immutable_tags_request)

Update repository immutable tags

Updates the immutable tags configuration for this repository.  **Only users with administrative privileges for the repository can modify these settings.** 

### Examples

```ruby
require 'time'
require 'docker-hub'
# setup authorization
DockerHub.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DockerHub::RepositoriesApi.new
namespace = 'namespace_example' # String | 
repository = 'repository_example' # String | 
update_repository_immutable_tags_request = DockerHub::UpdateRepositoryImmutableTagsRequest.new({immutable_tags: false, immutable_tags_rules: ["v.*", ".*-RELEASE"]}) # UpdateRepositoryImmutableTagsRequest | 

begin
  # Update repository immutable tags
  result = api_instance.update_repository_immutable_tags(namespace, repository, update_repository_immutable_tags_request)
  p result
rescue DockerHub::ApiError => e
  puts "Error when calling RepositoriesApi->update_repository_immutable_tags: #{e}"
end
```

#### Using the update_repository_immutable_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RepositoryInfo>, Integer, Hash)> update_repository_immutable_tags_with_http_info(namespace, repository, update_repository_immutable_tags_request)

```ruby
begin
  # Update repository immutable tags
  data, status_code, headers = api_instance.update_repository_immutable_tags_with_http_info(namespace, repository, update_repository_immutable_tags_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RepositoryInfo>
rescue DockerHub::ApiError => e
  puts "Error when calling RepositoriesApi->update_repository_immutable_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **namespace** | **String** |  |  |
| **repository** | **String** |  |  |
| **update_repository_immutable_tags_request** | [**UpdateRepositoryImmutableTagsRequest**](UpdateRepositoryImmutableTagsRequest.md) |  |  |

### Return type

[**RepositoryInfo**](RepositoryInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v2_namespaces_namespace_repositories_repository_tags_head

> v2_namespaces_namespace_repositories_repository_tags_head(namespace, repository)

Check repository tags

### Examples

```ruby
require 'time'
require 'docker-hub'
# setup authorization
DockerHub.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DockerHub::RepositoriesApi.new
namespace = 'namespace_example' # String | 
repository = 'repository_example' # String | 

begin
  # Check repository tags
  api_instance.v2_namespaces_namespace_repositories_repository_tags_head(namespace, repository)
rescue DockerHub::ApiError => e
  puts "Error when calling RepositoriesApi->v2_namespaces_namespace_repositories_repository_tags_head: #{e}"
end
```

#### Using the v2_namespaces_namespace_repositories_repository_tags_head_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v2_namespaces_namespace_repositories_repository_tags_head_with_http_info(namespace, repository)

```ruby
begin
  # Check repository tags
  data, status_code, headers = api_instance.v2_namespaces_namespace_repositories_repository_tags_head_with_http_info(namespace, repository)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DockerHub::ApiError => e
  puts "Error when calling RepositoriesApi->v2_namespaces_namespace_repositories_repository_tags_head_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **namespace** | **String** |  |  |
| **repository** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v2_namespaces_namespace_repositories_repository_tags_tag_head

> v2_namespaces_namespace_repositories_repository_tags_tag_head(namespace, repository, tag)

Check repository tag

### Examples

```ruby
require 'time'
require 'docker-hub'
# setup authorization
DockerHub.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DockerHub::RepositoriesApi.new
namespace = 'namespace_example' # String | 
repository = 'repository_example' # String | 
tag = 'tag_example' # String | 

begin
  # Check repository tag
  api_instance.v2_namespaces_namespace_repositories_repository_tags_tag_head(namespace, repository, tag)
rescue DockerHub::ApiError => e
  puts "Error when calling RepositoriesApi->v2_namespaces_namespace_repositories_repository_tags_tag_head: #{e}"
end
```

#### Using the v2_namespaces_namespace_repositories_repository_tags_tag_head_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> v2_namespaces_namespace_repositories_repository_tags_tag_head_with_http_info(namespace, repository, tag)

```ruby
begin
  # Check repository tag
  data, status_code, headers = api_instance.v2_namespaces_namespace_repositories_repository_tags_tag_head_with_http_info(namespace, repository, tag)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DockerHub::ApiError => e
  puts "Error when calling RepositoriesApi->v2_namespaces_namespace_repositories_repository_tags_tag_head_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **namespace** | **String** |  |  |
| **repository** | **String** |  |  |
| **tag** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## verify_repository_immutable_tags

> <ImmutableTagsVerifyResponse> verify_repository_immutable_tags(namespace, repository, immutable_tags_verify_request)

Verify repository immutable tags

Validates  the immutable tags regex pass in parameter and returns a list of tags matching it in this repository.  **Only users with administrative privileges for the repository call this endpoint.** 

### Examples

```ruby
require 'time'
require 'docker-hub'
# setup authorization
DockerHub.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = DockerHub::RepositoriesApi.new
namespace = 'namespace_example' # String | 
repository = 'repository_example' # String | 
immutable_tags_verify_request = DockerHub::ImmutableTagsVerifyRequest.new({regex: 'v.*'}) # ImmutableTagsVerifyRequest | 

begin
  # Verify repository immutable tags
  result = api_instance.verify_repository_immutable_tags(namespace, repository, immutable_tags_verify_request)
  p result
rescue DockerHub::ApiError => e
  puts "Error when calling RepositoriesApi->verify_repository_immutable_tags: #{e}"
end
```

#### Using the verify_repository_immutable_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImmutableTagsVerifyResponse>, Integer, Hash)> verify_repository_immutable_tags_with_http_info(namespace, repository, immutable_tags_verify_request)

```ruby
begin
  # Verify repository immutable tags
  data, status_code, headers = api_instance.verify_repository_immutable_tags_with_http_info(namespace, repository, immutable_tags_verify_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImmutableTagsVerifyResponse>
rescue DockerHub::ApiError => e
  puts "Error when calling RepositoriesApi->verify_repository_immutable_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **namespace** | **String** |  |  |
| **repository** | **String** |  |  |
| **immutable_tags_verify_request** | [**ImmutableTagsVerifyRequest**](ImmutableTagsVerifyRequest.md) |  |  |

### Return type

[**ImmutableTagsVerifyResponse**](ImmutableTagsVerifyResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

