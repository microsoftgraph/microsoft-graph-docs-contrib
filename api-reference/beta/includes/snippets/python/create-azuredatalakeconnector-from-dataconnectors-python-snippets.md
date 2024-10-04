---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.industry_data.azure_data_lake_connector import AzureDataLakeConnector
from msgraph_beta.generated.models.industry_data.file_format_reference_value import FileFormatReferenceValue
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AzureDataLakeConnector(
	odata_type = "#microsoft.graph.industryData.azureDataLakeConnector",
	display_name = "CSV connector",
	file_format = FileFormatReferenceValue(
		odata_type = "microsoft.graph.industryData.fileFormatReferenceValue",
		code = "schoolDataSyncV1",
	),
	additional_data = {
			"source_system@odata_bind" : "https://graph.microsoft.com/beta/external/industryData/sourceSystems('aa050107-5784-4a8e-1876-08daddab21bc')",
	}
)

result = await graph_client.external.industry_data.data_connectors.post(request_body)


```