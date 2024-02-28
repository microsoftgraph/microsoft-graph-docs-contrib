---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.ediscovery_review_set import EdiscoveryReviewSet

graph_client = GraphServiceClient(credentials, scopes)

request_body = EdiscoveryReviewSet(
	display_name = "My review set 2",
)

result = await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').review_sets.post(request_body)


```