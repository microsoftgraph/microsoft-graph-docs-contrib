---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.cases.ediscoverycases.item.reviewsets.item.microsoft_graph_security_export.export_post_request_body import ExportPostRequestBody
from msgraph_beta.generated.models.export_options import ExportOptions
from msgraph_beta.generated.models.export_file_structure import ExportFileStructure
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExportPostRequestBody(
	output_name = "Export via API",
	description = "Export for the Contoso investigation",
	export_options = ExportOptions.OriginalFiles | ExportOptions.Tags | ExportOptions.SplitSource | ExportOptions.IncludeFolderAndPath | ExportOptions.FriendlyName | ExportOptions.CondensePaths,
	export_structure = ExportFileStructure.Msg,
)

await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').review_sets.by_ediscovery_review_set_id('ediscoveryReviewSet-id').microsoft_graph_security_export.post(request_body)


```