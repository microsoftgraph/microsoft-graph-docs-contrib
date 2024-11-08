---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.access_review_reviewer import AccessReviewReviewer
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AccessReviewReviewer(
	id = "006111db-0810-4494-a6df-904d368bd81b",
)

result = await graph_client.access_reviews.by_access_review_id('accessReview-id').reviewers.post(request_body)


```