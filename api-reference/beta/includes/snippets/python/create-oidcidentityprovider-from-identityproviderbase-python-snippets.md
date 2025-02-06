---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.identity_provider_base import IdentityProviderBase
from msgraph_beta.generated.models.oidc_client_secret_authentication import OidcClientSecretAuthentication
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = IdentityProviderBase(
	odata_type = "#microsoft.graph.OidcIdentityProvider",
	display_name = "Contoso AAD B2C",
	additional_data = {
			"client_id" : "00001111-aaaa-2222-bbbb-3333cccc4444",
			"issuer" : "https://contoso.b2clogin.com/00001111-aaaa-2222-bbbb-3333cccc4444/v2.0/",
			"well_known_endpoint" : "https://contoso.b2clogin.com/contoso.onmicrosoft.com/v2.0/.well-known/openid-configuration?p=B2C_1A_SIGNINEMAIL",
			"response_type" : "code",
			"scope" : "openid profile email offline_access",
			"client_authentication" : {
					"@odata_type" : "#microsoft.graph.oidcClientSecretAuthentication",
					"client_secret" : "4294967296",
			},
			"inbound_claim_mapping" : {
					"sub" : "sub",
					"name" : "name",
					"given_name" : "given_name",
					"family_name" : "family_name",
					"email" : "email",
					"email_verified" : "email_verified",
					"phone_number" : "phone_number",
					"phone_number_verified" : "phone_number_verified",
					"address" : {
							"street_address" : "street_address",
							"locality" : "locality",
							"region" : "region",
							"postal_code" : "postal_code",
							"country" : "country",
					},
			},
	}
)

result = await graph_client.identity.identity_providers.post(request_body)


```