---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = AccessReview(
	display_name = "TestReview new name",
)

result = await graph_client.acces_reviews.by_acces_review_id('accessReview-id').patch(body = request_body)


```