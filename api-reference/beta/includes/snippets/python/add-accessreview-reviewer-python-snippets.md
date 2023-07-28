---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AccessReviewReviewer()
request_body.id = '006111db-0810-4494-a6df-904d368bd81b'




result = await client.acce_reviews.by_acce_review_id('accessReview-id').reviewers.post(request_body = request_body)


```