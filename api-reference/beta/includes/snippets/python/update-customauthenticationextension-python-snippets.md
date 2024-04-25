---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.on_token_issuance_start_custom_extension import OnTokenIssuanceStartCustomExtension
from msgraph.generated.models.http_request_endpoint import HttpRequestEndpoint
from msgraph.generated.models.azure_ad_token_authentication import AzureAdTokenAuthentication
from msgraph.generated.models.on_token_issuance_start_return_claim import OnTokenIssuanceStartReturnClaim

graph_client = GraphServiceClient(credentials, scopes)

request_body = OnTokenIssuanceStartCustomExtension(
	odata_type = "#microsoft.graph.onTokenIssuanceStartCustomExtension",
	display_name = "onTokenIssuanceStartCustomExtension",
	description = "Fetch additional claims from custom user store",
	endpoint_configuration = HttpRequestEndpoint(
		odata_type = "#microsoft.graph.httpRequestEndpoint",
		target_url = "https://authenticationeventsAPI.contoso.com",
	),
	authentication_configuration = AzureAdTokenAuthentication(
		odata_type = "#microsoft.graph.azureAdTokenAuthentication",
		resource_id = "api://authenticationeventsAPI.contoso.com/a13d0fc1-04ab-4ede-b215-63de0174cbb4",
	),
	claims_for_token_configuration = [
		OnTokenIssuanceStartReturnClaim(
			claim_id_in_api_response = "DateOfBirth",
		),
		OnTokenIssuanceStartReturnClaim(
			claim_id_in_api_response = "CustomRoles",
		),
	],
)

result = await graph_client.identity.custom_authentication_extensions.by_custom_authentication_extension_id('customAuthenticationExtension-id').patch(request_body)


```