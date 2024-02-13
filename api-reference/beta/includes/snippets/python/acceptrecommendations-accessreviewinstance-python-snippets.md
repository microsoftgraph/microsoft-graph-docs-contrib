---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


await graph_client.me.pending_access_review_instances.by_access_review_instance_id('accessReviewInstance-id').accept_recommendations.post()


```