---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.cases.ediscoverycases.item.searches.item.microsoft_graph_security_export_result.export_result_post_request_body import ExportResultPostRequestBody
from msgraph_beta.generated.models.export_criteria import ExportCriteria
from msgraph_beta.generated.models.export_location import ExportLocation
from msgraph_beta.generated.models.additional_options import AdditionalOptions
from msgraph_beta.generated.models.export_format import ExportFormat

graph_client = GraphServiceClient(credentials, scopes)

request_body = ExportResultPostRequestBody(
	display_name = "Export 3",
	export_criteria = ExportCriteria.SearchHits | ExportCriteria.PartiallyIndexed,
	export_location = ExportLocation.ResponsiveLocations,
	additional_options = AdditionalOptions.None,
	export_format = ExportFormat.Msg,
)

await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').searches.by_ediscovery_search_id('ediscoverySearch-id').microsoft_graph_security_export_result.post(request_body)


```