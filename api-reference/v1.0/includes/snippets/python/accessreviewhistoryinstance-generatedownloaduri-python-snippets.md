---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.identity_governance.access_reviews.history_definitions.by_access_review_history_definition_id('accessReviewHistoryDefinition-id').instances.by_access_review_history_instance_id('accessReviewHistoryInstance-id').generate_download_uri.post()


```