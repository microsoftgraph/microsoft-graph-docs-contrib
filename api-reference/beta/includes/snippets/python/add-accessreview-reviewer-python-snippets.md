---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = AccessReviewReviewer(
	id = "006111db-0810-4494-a6df-904d368bd81b",
)

result = await graph_client.access_reviews.by_access_review_id('accessReview-id').reviewers.post(request_body)


```