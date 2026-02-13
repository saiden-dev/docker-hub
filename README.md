# Docker Hub Ruby Client

[![Gem Version](https://badge.fury.io/rb/docker-hub.svg)](https://badge.fury.io/rb/docker-hub)
[![Build](https://github.com/saiden-dev/docker-hub/actions/workflows/publish.yml/badge.svg)](https://github.com/saiden-dev/docker-hub/actions/workflows/publish.yml)

Auto-generated Ruby client for the [Docker Hub API](https://docs.docker.com/reference/api/hub/latest/).

## Installation

```ruby
gem 'docker-hub'
```

Or install directly:

```bash
gem install docker-hub
```

## Usage

```ruby
require 'docker-hub'

# Configure authentication
DockerHub.configure do |config|
  config.access_token = ENV['DOCKER_HUB_TOKEN']
end

# List repositories
api = DockerHub::RepositoriesApi.new
repos = api.list_namespace_repositories('your-namespace')
repos.results.each do |repo|
  puts "#{repo.namespace}/#{repo.name}"
end

# Get repository details
repo = api.get_repository('namespace', 'repo-name')
puts repo.description

# List tags
tags = api.list_repository_tags('namespace', 'repo-name')
tags.results.each do |tag|
  puts "#{tag.name} - #{tag.digest}"
end
```

## Available APIs

| API Class | Description |
|-----------|-------------|
| `DockerHub::AuthenticationApiApi` | Login, 2FA, token creation |
| `DockerHub::RepositoriesApi` | Repository & tag management |
| `DockerHub::OrgsApi` | Organization members |
| `DockerHub::GroupsApi` | Teams/groups management |
| `DockerHub::AccessTokensApi` | Personal Access Tokens |
| `DockerHub::OrgAccessTokensApi` | Organization Access Tokens |
| `DockerHub::InvitesApi` | Organization invitations |
| `DockerHub::AuditLogsApi` | Audit log queries |
| `DockerHub::OrgSettingsApi` | Organization settings |
| `DockerHub::ScimApi` | SCIM/SSO integration |

## Authentication

Create a Personal Access Token at [hub.docker.com/settings/security](https://hub.docker.com/settings/security).

```ruby
DockerHub.configure do |config|
  # Using PAT (recommended)
  config.access_token = 'dckr_pat_xxxxx'

  # Or username/password (deprecated)
  config.username = 'your-username'
  config.password = 'your-password'
end
```

## Auto-Generation

This gem is automatically generated from Docker's [OpenAPI specification](https://docs.docker.com/reference/api/hub/latest.yaml) using [OpenAPI Generator](https://openapi-generator.tech/).

The generation is triggered manually via GitHub Actions. No hand-written Ruby code exists in this repository.

## License

MIT
