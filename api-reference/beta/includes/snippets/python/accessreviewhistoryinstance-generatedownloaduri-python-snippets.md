---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python

result = await graph_client.identity_governance.access_reviews.history_definitions.by_access_review_history_definition_id('accessReviewHistoryDefinition-id').instances.by_access_review_history_instance_id('accessReviewHistoryInstance-id').generate_download_uri.post()


```