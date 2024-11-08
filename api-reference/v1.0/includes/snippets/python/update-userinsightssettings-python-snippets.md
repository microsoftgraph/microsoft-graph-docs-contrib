---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.user_insights_settings import UserInsightsSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UserInsightsSettings(
	is_enabled = False,
)

result = await graph_client.users.by_user_id('user-id').settings.item_insights.patch(request_body)


```