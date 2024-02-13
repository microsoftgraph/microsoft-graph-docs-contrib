---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.insights_settings import InsightsSettings

graph_client = GraphServiceClient(credentials, scopes)

request_body = InsightsSettings(
	disabled_for_group = "edbfe4fb-ec70-4300-928f-dbb2ae86c981",
)

result = await graph_client.organization.by_organization_id('organization-id').settings.item_insights.patch(request_body)


```