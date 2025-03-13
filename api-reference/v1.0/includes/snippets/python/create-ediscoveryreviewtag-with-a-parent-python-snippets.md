---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.security.ediscovery_review_tag import EdiscoveryReviewTag
from msgraph.generated.models.child_selectability import ChildSelectability
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EdiscoveryReviewTag(
	display_name = "My tag API",
	description = "Use Graph API to create tags",
	child_selectability = ChildSelectability.Many,
	additional_data = {
			"parent@odata_bind" : "",
	}
)

result = await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').tags.post(request_body)


```