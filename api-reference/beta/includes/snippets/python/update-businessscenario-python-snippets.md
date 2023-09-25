---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = BusinessScenario(
	owner_app_ids = [
		"44109254-4b2b-7a33-76ee-c890a167b295",
		"13eb9d8b-1d63-4153-9417-3a69ab200a78",
	]
)

result = await graph_client.solutions.busine_scenarios.by_busines_scenario_id('businessScenario-id').patch(body = request_body)


```