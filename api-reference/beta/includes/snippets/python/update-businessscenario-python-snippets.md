---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.business_scenario import BusinessScenario

graph_client = GraphServiceClient(credentials, scopes)

request_body = BusinessScenario(
	owner_app_ids = [
		"44109254-4b2b-7a33-76ee-c890a167b295",
		"13eb9d8b-1d63-4153-9417-3a69ab200a78",
	],
)

result = await graph_client.solutions.business_scenarios.by_business_scenario_id('businessScenario-id').patch(request_body)


```