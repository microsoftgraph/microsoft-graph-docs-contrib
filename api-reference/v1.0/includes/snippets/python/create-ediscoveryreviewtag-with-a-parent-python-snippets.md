---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.ediscovery_review_tag import EdiscoveryReviewTag

graph_client = GraphServiceClient(credentials, scopes)

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