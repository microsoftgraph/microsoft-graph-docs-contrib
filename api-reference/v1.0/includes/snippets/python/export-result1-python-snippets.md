---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.security.cases.ediscoverycases.item.searches.item.microsoft_graph_security_export_result.export_result_post_request_body import ExportResultPostRequestBody
from msgraph.generated.models.export_criteria import ExportCriteria
from msgraph.generated.models.additional_options import AdditionalOptions
from msgraph.generated.models.export_format import ExportFormat
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExportResultPostRequestBody(
	display_name = "Export 1 - simple PST",
	export_criteria = ExportCriteria.SearchHits,
	additional_options = AdditionalOptions.HtmlTranscripts | AdditionalOptions.SplitSource | AdditionalOptions.IncludeFolderAndPath | AdditionalOptions.CondensePaths | AdditionalOptions.FriendlyName,
	export_format = ExportFormat.Pst,
)

await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').searches.by_ediscovery_search_id('ediscoverySearch-id').microsoft_graph_security_export_result.post(request_body)


```