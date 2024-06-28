---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.cases.ediscoverycases.item.searches.item.microsoft_graph_security_export_report.export_report_post_request_body import ExportReportPostRequestBody
from msgraph_beta.generated.models.export_criteria import ExportCriteria
from msgraph_beta.generated.models.export_location import ExportLocation
from msgraph_beta.generated.models.additional_options import AdditionalOptions

graph_client = GraphServiceClient(credentials, scopes)

request_body = ExportReportPostRequestBody(
	display_name = "Export 4",
	export_criteria = ExportCriteria.PartiallyIndexed,
	export_location = ExportLocation.ResponsiveLocations | ExportLocation.NonresponsiveLocations,
	additional_options = AdditionalOptions.TeamsAndYammerConversations | AdditionalOptions.CloudAttachments | AdditionalOptions.AllDocumentVersions | AdditionalOptions.SubfolderContents | AdditionalOptions.ListAttachments,
)

await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').searches.by_ediscovery_search_id('ediscoverySearch-id').microsoft_graph_security_export_report.post(request_body)


```