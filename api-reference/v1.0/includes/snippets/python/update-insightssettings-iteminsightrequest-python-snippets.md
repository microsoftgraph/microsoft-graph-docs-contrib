---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.insights_settings import InsightsSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = InsightsSettings(
	disabled_for_group = "edbfe4fb-ec70-4300-928f-dbb2ae86c981",
)

result = await graph_client.admin.people.item_insights.patch(request_body)


```