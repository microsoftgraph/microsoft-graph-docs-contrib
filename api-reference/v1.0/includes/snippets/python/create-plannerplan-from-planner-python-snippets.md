---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = PlannerPlan(
	container = PlannerPlanContainer(
		url = "https://graph.microsoft.com/beta/groups/ebf3b108-5234-4e22-b93d-656d7dae5874",
	),
	title = "title-value",
)

result = await graph_client.planner.plans.post(request_body)


```