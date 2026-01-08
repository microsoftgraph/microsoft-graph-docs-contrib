---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.security.cases.ediscoverycases.item.reviewsets.item.microsoft_graph_security_add_to_review_set.add_to_review_set_post_request_body import AddToReviewSetPostRequestBody
from msgraph.generated.models.security.ediscovery_search import EdiscoverySearch
from msgraph.generated.models.additional_data_options import AdditionalDataOptions
from msgraph.generated.models.cloud_attachment_version import CloudAttachmentVersion
from msgraph.generated.models.document_version import DocumentVersion
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AddToReviewSetPostRequestBody(
	search = EdiscoverySearch(
		id = "c17e91d6-6bc0-4ecb-b388-269ea3d4ffb7",
	),
	additional_data_options = AdditionalDataOptions.LinkedFiles,
	cloud_attachment_version = CloudAttachmentVersion.Latest,
	document_version = DocumentVersion.Recent10,
)

await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').review_sets.by_ediscovery_review_set_id('ediscoveryReviewSet-id').microsoft_graph_security_add_to_review_set.post(request_body)


```