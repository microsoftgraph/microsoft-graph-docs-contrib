---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.on_token_issuance_start_custom_extension import OnTokenIssuanceStartCustomExtension
from msgraph_beta.generated.models.http_request_endpoint import HttpRequestEndpoint
from msgraph_beta.generated.models.azure_ad_token_authentication import AzureAdTokenAuthentication
from msgraph_beta.generated.models.custom_extension_client_configuration import CustomExtensionClientConfiguration
from msgraph_beta.generated.models.on_token_issuance_start_return_claim import OnTokenIssuanceStartReturnClaim
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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
	client_configuration = CustomExtensionClientConfiguration(
		timeout_in_milliseconds = 2000,
		maximum_retries = 1,
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

result = await graph_client.identity.custom_authentication_extensions.post(request_body)


```