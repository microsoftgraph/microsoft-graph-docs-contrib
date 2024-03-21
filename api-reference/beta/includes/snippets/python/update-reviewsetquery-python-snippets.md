---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.review_set_query import ReviewSetQuery

graph_client = GraphServiceClient(credentials, scopes)

request_body = ReviewSetQuery(
	display_name = "My Query 1 - Renamed",
)

result = await graph_client.compliance.ediscovery.cases.by_case_id('case-id').review_sets.by_review_set_id('reviewSet-id').queries.by_review_set_query_id('reviewSetQuery-id').patch(request_body)


```