---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.compliance.ediscovery.cases.item.reviewsets.item.microsoft_graph_ediscovery_export.export_post_request_body import ExportPostRequestBody
from msgraph_beta.generated.models.export_options import ExportOptions
from msgraph_beta.generated.models.export_file_structure import ExportFileStructure
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExportPostRequestBody(
	output_name = "2020-12-06 Contoso investigation export",
	description = "Export for the Contoso investigation",
	export_options = ExportOptions.OriginalFiles | ExportOptions.FileInfo | ExportOptions.Tags,
	export_structure = ExportFileStructure.Directory,
)

await graph_client.compliance.ediscovery.cases.by_case_id('case-id').review_sets.by_review_set_id('reviewSet-id').microsoft_graph_ediscovery_export.post(request_body)


```