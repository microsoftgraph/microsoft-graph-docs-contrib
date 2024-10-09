---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.open_id_connect_identity_provider import OpenIdConnectIdentityProvider
from msgraph_beta.generated.models.claims_mapping import ClaimsMapping
from msgraph_beta.generated.models.open_id_connect_response_mode import OpenIdConnectResponseMode
from msgraph_beta.generated.models.open_id_connect_response_types import OpenIdConnectResponseTypes
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = OpenIdConnectIdentityProvider(
	odata_type = "microsoft.graph.openIdConnectIdentityProvider",
	display_name = "Login with the Contoso identity provider",
	client_id = "56433757-cadd-4135-8431-2c9e3fd68ae8",
	client_secret = "12345",
	claims_mapping = ClaimsMapping(
		user_id = "myUserId",
		given_name = "myGivenName",
		surname = "mySurname",
		email = "myEmail",
		display_name = "myDisplayName",
	),
	domain_hint = "mycustomoidc",
	metadata_url = "https://mycustomoidc.com/.well-known/openid-configuration",
	response_mode = OpenIdConnectResponseMode.Form_post,
	response_type = OpenIdConnectResponseTypes.Code,
	scope = "openid",
)

result = await graph_client.identity.identity_providers.post(request_body)


```