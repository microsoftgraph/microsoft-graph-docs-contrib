---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.ediscovery_review_set_query import EdiscoveryReviewSetQuery

graph_client = GraphServiceClient(credentials, scopes)

request_body = EdiscoveryReviewSetQuery(
	display_name = "My Query 1",
	content_query = "(Author=\"edison\")",
)

result = await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').review_sets.by_ediscovery_review_set_id('ediscoveryReviewSet-id').queries.post(request_body)


```