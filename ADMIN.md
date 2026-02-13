# Docker Hub Ruby Gem - Admin Guide

Auto-generated Ruby client for the Docker Hub API.

## Installation

```ruby
gem 'docker-hub', '~> 2.0'
```

## Authentication

Docker Hub API uses a two-step authentication:

1. Exchange credentials (username + PAT) for a short-lived JWT bearer token
2. Use the bearer token for subsequent API calls

```ruby
require 'docker-hub'

# Step 1: Get bearer token
auth_api = DockerHub::AuthenticationApiApi.new
token = auth_api.auth_create_access_token(
  auth_create_access_token_request: DockerHub::AuthCreateAccessTokenRequest.new(
    identifier: 'your-username',
    secret: 'dckr_pat_xxxxxxxxxxxx'  # Personal Access Token
  )
)

# Step 2: Configure client with bearer token
DockerHub.configure do |config|
  config.access_token = token.access_token
end

# Now use any API
repos_api = DockerHub::RepositoriesApi.new
repos = repos_api.list_namespace_repositories('your-namespace')
```

## API Reference

### AuthenticationApiApi

Exchange credentials for bearer tokens.

| Method | Description |
|--------|-------------|
| `auth_create_access_token` | Exchange username/PAT for JWT bearer token |
| `post_users_login` | Login with username/password |
| `post_users2_fa_login` | Complete 2FA login |

### RepositoriesApi

Manage repositories and tags.

| Method | Description |
|--------|-------------|
| `list_namespace_repositories(namespace)` | List all repos in a namespace |
| `get_repository(namespace, repo)` | Get repo details |
| `create_repository(namespace, request)` | Create a new repository |
| `check_repository(namespace, repo)` | Check if repo exists (HEAD) |
| `list_repository_tags(namespace, repo)` | List all tags |
| `get_repository_tag(namespace, repo, tag)` | Get tag details |
| `v2_namespaces_..._tags_tag_head` | Check if specific tag exists |
| `update_repository_immutable_tags` | Configure immutable tag settings |
| `verify_repository_immutable_tags` | Verify immutable tag rules |
| `create_repository_group` | Create repo permission group |

**Example: List repos with stats**
```ruby
repos_api = DockerHub::RepositoriesApi.new
repos = repos_api.list_namespace_repositories('myorg')

repos.results.each do |repo|
  puts "#{repo.name}: #{repo.pull_count} pulls"
end
```

**Example: Get tag details**
```ruby
tag = repos_api.get_repository_tag('myorg', 'myrepo', 'latest')
puts "Size: #{tag.full_size / 1024 / 1024} MB"
puts "Pushed: #{tag.tag_last_pushed}"
puts "Pulled: #{tag.tag_last_pulled}"
```

### AccessTokensApi

Manage personal access tokens (requires full OAuth, not PAT-derived tokens).

| Method | Description |
|--------|-------------|
| `v2_access_tokens_get` | List access tokens |
| `v2_access_tokens_post` | Create access token |
| `v2_access_tokens_uuid_get` | Get token details |
| `v2_access_tokens_uuid_patch` | Update token |
| `v2_access_tokens_uuid_delete` | Delete token |

### OrgAccessTokensApi

Manage organization access tokens.

| Method | Description |
|--------|-------------|
| `v2_orgs_name_access_tokens_get` | List org tokens |
| `v2_orgs_name_access_tokens_post` | Create org token |
| `v2_orgs_org_name_access_tokens_access_token_id_get` | Get org token |
| `v2_orgs_org_name_access_tokens_access_token_id_patch` | Update org token |
| `v2_orgs_org_name_access_tokens_access_token_id_delete` | Delete org token |

### OrgsApi

Manage organization members.

| Method | Description |
|--------|-------------|
| `v2_orgs_org_name_members_get` | List org members |
| `v2_orgs_org_name_members_username_put` | Add/update member |
| `v2_orgs_org_name_members_username_delete` | Remove member |
| `v2_orgs_org_name_members_export_get` | Export members list |

### GroupsApi

Manage organization groups (teams).

| Method | Description |
|--------|-------------|
| `v2_orgs_org_name_groups_get` | List groups |
| `v2_orgs_org_name_groups_post` | Create group |
| `v2_orgs_org_name_groups_group_name_get` | Get group |
| `v2_orgs_org_name_groups_group_name_patch` | Update group |
| `v2_orgs_org_name_groups_group_name_put` | Replace group |
| `v2_orgs_org_name_groups_group_name_delete` | Delete group |
| `v2_orgs_org_name_groups_group_name_members_get` | List group members |
| `v2_orgs_org_name_groups_group_name_members_post` | Add group member |
| `v2_orgs_org_name_groups_group_name_members_username_delete` | Remove member |

### InvitesApi

Manage organization invitations.

| Method | Description |
|--------|-------------|
| `v2_orgs_org_name_invites_get` | List pending invites |
| `v2_invites_bulk_post` | Send bulk invites |
| `v2_invites_id_resend_patch` | Resend invite |
| `v2_invites_id_delete` | Cancel invite |

### OrgSettingsApi

Manage organization settings.

| Method | Description |
|--------|-------------|
| `v2_orgs_name_settings_get` | Get org settings |
| `v2_orgs_name_settings_put` | Update org settings |

### AuditLogsApi

Access audit logs (requires appropriate permissions).

| Method | Description |
|--------|-------------|
| `audit_logs_list_audit_logs` | List audit log entries |
| `audit_logs_list_audit_actions` | List available audit actions |

### ScimApi

SCIM 2.0 provisioning (enterprise SSO).

| Method | Description |
|--------|-------------|
| `v2_scim20_users_get` | List SCIM users |
| `v2_scim20_users_post` | Create SCIM user |
| `v2_scim20_users_id_get` | Get SCIM user |
| `v2_scim20_users_id_put` | Update SCIM user |
| `v2_scim20_service_provider_config_get` | Get SCIM config |
| `v2_scim20_schemas_get` | List SCIM schemas |
| `v2_scim20_schemas_id_get` | Get SCIM schema |
| `v2_scim20_resource_types_get` | List resource types |
| `v2_scim20_resource_types_name_get` | Get resource type |

## Limitations

### PAT-Derived Token Restrictions

When using a Personal Access Token (PAT) to obtain a bearer token, some APIs are restricted:

| API | PAT Access |
|-----|------------|
| Repositories (read) | ✅ |
| Repositories (create) | ❌ Requires full OAuth |
| Access Tokens | ❌ Forbidden |
| Org Members | ❌ Forbidden |
| Org Settings | ❌ Forbidden |
| Groups | ❌ Forbidden |
| Invites | ❌ Forbidden |

### Not Supported by Hub API

These operations require the Docker Registry API (v2), not the Hub API:

- Push/pull images
- Create/delete tags
- Manage image layers
- Cross-repo image copying

Use `docker` CLI for these operations:
```bash
docker push myorg/myrepo:tag
docker pull myorg/myrepo:tag
```

## Post-Generation Fixes

The OpenAPI Generator produces code with some issues that are fixed by `scripts/fix_generated_code.rb`:

1. **Nil validation** - Removes strict nil checks that fail on nullable API responses
2. **Enum validation** - Removes enum validators where API returns values not in spec
3. **Regex patterns** - Fixes malformed Ruby regex literals
4. **Range validation** - Adds nil guards to numeric range checks

Run after generation:
```bash
ruby scripts/fix_generated_code.rb
```

## Example: Dashboard Script

```ruby
require 'docker-hub'

class DockerHubDashboard
  def initialize(username:, pat:)
    token = DockerHub::AuthenticationApiApi.new.auth_create_access_token(
      auth_create_access_token_request: DockerHub::AuthCreateAccessTokenRequest.new(
        identifier: username, secret: pat
      )
    )
    DockerHub.configure { |c| c.access_token = token.access_token }
    @repos_api = DockerHub::RepositoriesApi.new
    @namespace = username
  end

  def summary
    repos = @repos_api.list_namespace_repositories(@namespace)
    total_pulls = repos.results.sum { |r| r.pull_count || 0 }

    puts "Namespace: #{@namespace}"
    puts "Repositories: #{repos.count}"
    puts "Total pulls: #{total_pulls}"
    puts

    repos.results.each do |repo|
      tags = @repos_api.list_repository_tags(@namespace, repo.name)
      size = tags.results.sum { |t| t.full_size || 0 } / 1024.0 / 1024.0
      puts "  #{repo.name}: #{tags.count} tags, #{size.round(1)} MB, #{repo.pull_count} pulls"
    end
  end
end

dashboard = DockerHubDashboard.new(username: 'myuser', pat: ENV['DOCKER_PAT'])
dashboard.summary
```

## Links

- [Docker Hub API Docs](https://docs.docker.com/docker-hub/api/latest/)
- [OpenAPI Spec](https://docs.docker.com/reference/api/hub/latest.yaml)
- [Create PAT](https://hub.docker.com/settings/security)
