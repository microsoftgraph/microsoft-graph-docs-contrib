---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.security.cases.ediscoverycases.item.reviewsets.item.queries.item.microsoft_graph_security_export.export_post_request_body import ExportPostRequestBody
from msgraph.generated.models.export_options import ExportOptions
from msgraph.generated.models.export_file_structure import ExportFileStructure
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExportPostRequestBody(
	output_name = "Export reviewset query via API",
	description = "Export for the Contoso investigation 2",
	export_options = ExportOptions.OriginalFiles | ExportOptions.Tags,
	export_structure = ExportFileStructure.Directory,
)

await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').review_sets.by_ediscovery_review_set_id('ediscoveryReviewSet-id').queries.by_ediscovery_review_set_query_id('ediscoveryReviewSetQuery-id').microsoft_graph_security_export.post(request_body)


```