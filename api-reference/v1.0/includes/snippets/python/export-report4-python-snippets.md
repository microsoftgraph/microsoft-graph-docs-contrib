---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.security.cases.ediscoverycases.item.searches.item.microsoft_graph_security_export_report.export_report_post_request_body import ExportReportPostRequestBody
from msgraph.generated.models.export_criteria import ExportCriteria
from msgraph.generated.models.export_location import ExportLocation
from msgraph.generated.models.additional_options import AdditionalOptions
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExportReportPostRequestBody(
	display_name = "Export 4",
	export_criteria = ExportCriteria.PartiallyIndexed,
	export_location = ExportLocation.ResponsiveLocations | ExportLocation.NonresponsiveLocations,
	additional_options = AdditionalOptions.AdvancedIndexing | AdditionalOptions.SubfolderContents | AdditionalOptions.AllItemsInFolder | AdditionalOptions.ListAttachments | AdditionalOptions.TeamsAndYammerConversations | AdditionalOptions.HtmlTranscripts | AdditionalOptions.CloudAttachments,
)

await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').searches.by_ediscovery_search_id('ediscoverySearch-id').microsoft_graph_security_export_report.post(request_body)


```