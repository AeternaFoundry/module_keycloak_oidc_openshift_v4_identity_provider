resource "keycloak_oidc_openshift_v4_identity_provider" "oidc_openshift_v4_identity_providers" {
  for_each = var.oidc_openshift_v4_identity_providers

  base_url                        = each.value.base_url
  client_id                       = each.value.client_id
  client_secret                   = each.value.client_secret
  realm                           = each.value.realm
  add_read_token_role_on_create   = each.value.add_read_token_role_on_create
  alias                           = each.value.alias
  authenticate_by_default         = each.value.authenticate_by_default
  default_scopes                  = each.value.default_scopes
  display_name                    = each.value.display_name
  enabled                         = each.value.enabled
  extra_config                    = each.value.extra_config
  first_broker_login_flow_alias   = each.value.first_broker_login_flow_alias
  gui_order                       = each.value.gui_order
  hide_on_login_page              = each.value.hide_on_login_page
  link_only                       = each.value.link_only
  org_domain                      = each.value.org_domain
  org_redirect_mode_email_matches = each.value.org_redirect_mode_email_matches
  organization_id                 = each.value.organization_id
  post_broker_login_flow_alias    = each.value.post_broker_login_flow_alias
  provider_id                     = each.value.provider_id
  store_token                     = each.value.store_token
  sync_mode                       = each.value.sync_mode
  trust_email                     = each.value.trust_email
}

