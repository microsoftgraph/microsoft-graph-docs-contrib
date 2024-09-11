---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.on_premises_conditional_access_settings import OnPremisesConditionalAccessSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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