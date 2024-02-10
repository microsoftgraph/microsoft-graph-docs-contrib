---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.access_review import AccessReview

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessReview(
	display_name = "TestReview new name",
)

result = await graph_client.access_reviews.by_access_review_id('accessReview-id').patch(request_body)


```