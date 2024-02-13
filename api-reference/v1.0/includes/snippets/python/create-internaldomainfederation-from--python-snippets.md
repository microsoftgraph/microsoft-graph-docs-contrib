---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.internal_domain_federation import InternalDomainFederation

graph_client = GraphServiceClient(credentials, scopes)

request_body = InternalDomainFederation(
	odata_type = "#microsoft.graph.internalDomainFederation",
	display_name = "Contoso",
	issuer_uri = "http://contoso.com/adfs/services/trust",
	metadata_exchange_uri = "https://sts.contoso.com/adfs/services/trust/mex",
	signing_certificate = "MIIE3jCCAsagAwIBAgIQQcyDaZz3MI",
	passive_sign_in_uri = "https://sts.contoso.com/adfs/ls",
	preferred_authentication_protocol = AuthenticationProtocol.WsFed,
	active_sign_in_uri = "https://sts.contoso.com/adfs/services/trust/2005/usernamemixed",
	sign_out_uri = "https://sts.contoso.com/adfs/ls",
	prompt_login_behavior = PromptLoginBehavior.NativeSupport,
	is_signed_authentication_request_required = True,
	next_signing_certificate = "MIIE3jCCAsagAwIBAgIQQcyDaZz3MI",
	federated_idp_mfa_behavior = FederatedIdpMfaBehavior.RejectMfaByFederatedIdp,
)

result = await graph_client.domains.by_domain_id('domain-id').federation_configuration.post(request_body)


```