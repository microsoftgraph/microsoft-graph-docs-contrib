---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AzureDataLakeConnector(
	odata_type = "#microsoft.graph.industryData.azureDataLakeConnector",
	display_name = "CSV connector",
	additional_data = {
			"source_system@odata_bind" : "https://graph.microsoft.com/beta/external/industryData/sourceSystems('aa050107-5784-4a8e-1876-08daddab21bc')",
	}
)

result = await graph_client.external.industry_data.data_connectors.post(request_body)


```