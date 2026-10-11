variable "oidc_openshift_v4_identity_providers" {
  description = <<EOT
Map of oidc_openshift_v4_identity_providers, attributes below
Required:
    - base_url
    - client_id
    - client_secret
    - realm
Optional:
    - add_read_token_role_on_create
    - alias
    - authenticate_by_default
    - default_scopes
    - display_name
    - enabled
    - extra_config
    - first_broker_login_flow_alias
    - gui_order
    - hide_on_login_page
    - link_only
    - org_domain
    - org_redirect_mode_email_matches
    - organization_id
    - post_broker_login_flow_alias
    - provider_id
    - store_token
    - sync_mode
    - trust_email
EOT

  type = map(object({
    base_url                        = string
    client_id                       = string
    client_secret                   = string
    realm                           = string
    add_read_token_role_on_create   = optional(bool)
    alias                           = optional(string)
    authenticate_by_default         = optional(bool)
    default_scopes                  = optional(string)
    display_name                    = optional(string)
    enabled                         = optional(bool)
    extra_config                    = optional(map(string))
    first_broker_login_flow_alias   = optional(string)
    gui_order                       = optional(string)
    hide_on_login_page              = optional(bool)
    link_only                       = optional(bool)
    org_domain                      = optional(string)
    org_redirect_mode_email_matches = optional(bool)
    organization_id                 = optional(string)
    post_broker_login_flow_alias    = optional(string)
    provider_id                     = optional(string)
    store_token                     = optional(bool)
    sync_mode                       = optional(string)
    trust_email                     = optional(bool)
  }))
}

