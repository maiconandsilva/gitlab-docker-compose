gitlab_rails['initial_shared_runners_registration_token'] = 'TO_BE_REPLACED'

external_url "#{ENV['GITLAB_URL']}:#{ENV['GITLAB_HTTP_PORT']}"
gitlab_rails['gitlab_shell_ssh_port'] = ENV['GITLAB_SSH_PORT']

### GitLab user privileges
gitlab_rails['gitlab_default_can_create_group'] = true
gitlab_rails['gitlab_username_changing_enabled'] = false

gitlab_rails['omniauth_enabled'] = false
gitlab_rails['impersonation_enabled'] = true

# ##! Docs: https://docs.gitlab.com/ee/administration/packages/dependency_proxy.html
gitlab_rails['dependency_proxy_enabled'] = true
gitlab_rails['dependency_proxy_storage_path'] = "/var/opt/gitlab/gitlab-rails/shared/dependency_proxy"

### Default Theme
### Available values:
##! `1`  for Indigo
##! `2`  for Dark
##! `3`  for Light
##! `4`  for Blue
##! `5`  for Green
##! `6`  for Light Indigo
##! `7`  for Light Blue
##! `8`  for Light Green
##! `9`  for Red
##! `10` for Light Red
gitlab_rails['gitlab_default_theme'] = 3

# gitlab_rails['ldap_enabled'] = true
# gitlab_rails['prevent_ldap_sign_in'] = false

###! **remember to close this block with 'EOS' below**
# gitlab_rails['ldap_servers'] = YAML.load <<-'EOS'
# main: # 'main' is the GitLab 'provider ID' of this LDAP server
#     label: 'LDAP'
#     timeout: 0
#     host: 'X.X.X.X'
#     port: 389
#     uid: 'uid'
#     encryption: 'plain' # 'start_tls' or 'simple_tls' or 'plain'
#     verify_certificates: false
#     smartcard_auth: false
#     active_directory: false
#     allow_username_or_email_login: true
#     lowercase_usernames: false
#     block_auto_created_users: false
#     base: 'dc=X,dc=X,dc=X'
# #    user_filter: '(employeeType=developer)'
# #     bind_dn: ''
# #     password: '_the_password_of_the_bind_user'
#     ## EE only
# #     group_base: ''
# #     admin_group: ''
# #     sync_ssh_keys: false
# EOS
