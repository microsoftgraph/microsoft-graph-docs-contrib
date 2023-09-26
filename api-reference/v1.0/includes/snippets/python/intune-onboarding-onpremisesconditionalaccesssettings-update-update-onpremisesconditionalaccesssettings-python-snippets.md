---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = OnPremisesConditionalAccessSettings(
	odata_type = "#microsoft.graph.onPremisesConditionalAccessSettings",
	enabled = True,
	included_groups = [
		UUID("77c9d466-d466-77c9-66d4-c97766d4c977"),
	]
	excluded_groups = [
		UUID("2a0afae4-fae4-2a0a-e4fa-0a2ae4fa0a2a"),
	]
	override_default_rule = True,
)

result = await graph_client.device_management.conditional_acces_settings.patch(body = request_body)


```