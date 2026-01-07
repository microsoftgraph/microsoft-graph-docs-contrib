---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.recommendation_configuration import RecommendationConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RecommendationConfiguration(
	is_notification_enabled = True,
)

result = await graph_client.directory.recommendation_configuration.patch(request_body)


```