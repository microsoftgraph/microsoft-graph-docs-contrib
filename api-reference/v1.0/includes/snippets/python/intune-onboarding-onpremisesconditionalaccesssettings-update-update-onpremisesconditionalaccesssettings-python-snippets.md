---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.on_premises_conditional_access_settings import OnPremisesConditionalAccessSettings

graph_client = GraphServiceClient(credentials, scopes)

request_body = OnPremisesConditionalAccessSettings(
	odata_type = "#microsoft.graph.onPremisesConditionalAccessSettings",
	enabled = True,
	included_groups = [
		UUID("77c9d466-d466-77c9-66d4-c97766d4c977"),
	],
	excluded_groups = [
		UUID("2a0afae4-fae4-2a0a-e4fa-0a2ae4fa0a2a"),
	],
	override_default_rule = True,
)

result = await graph_client.device_management.conditional_access_settings.patch(request_body)


```