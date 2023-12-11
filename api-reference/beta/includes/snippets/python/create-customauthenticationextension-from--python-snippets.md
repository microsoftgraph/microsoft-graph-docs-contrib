---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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