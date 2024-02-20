---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.on_attribute_collection_submit_custom_extension import OnAttributeCollectionSubmitCustomExtension
from msgraph.generated.models.azure_ad_token_authentication import AzureAdTokenAuthentication
from msgraph.generated.models.http_request_endpoint import HttpRequestEndpoint
from msgraph.generated.models.custom_extension_client_configuration import CustomExtensionClientConfiguration

graph_client = GraphServiceClient(credentials, scopes)

request_body = OnAttributeCollectionSubmitCustomExtension(
	odata_type = "#microsoft.graph.onAttributeCollectionSubmitCustomExtension",
	display_name = "attributeCollectionSubmitName",
	description = "example description",
	authentication_configuration = AzureAdTokenAuthentication(
		odata_type = "#microsoft.graph.azureAdTokenAuthentication",
		resource_id = "api://contoso.com/fb96de85-2abe-4b02-b45f-64ba122c509e",
	),
	endpoint_configuration = HttpRequestEndpoint(
		odata_type = "#microsoft.graph.httpRequestEndpoint",
		target_url = "https://contoso.com",
	),
	client_configuration = CustomExtensionClientConfiguration(
		timeout_in_milliseconds = 2000,
		maximum_retries = 1,
	),
)

result = await graph_client.identity.custom_authentication_extensions.post(request_body)


```