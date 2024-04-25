---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.identity_governance.access_reviews.history_definitions.by_access_review_history_definition_id('accessReviewHistoryDefinition-id').instances.get()


```