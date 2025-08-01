---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.planner_plan import PlannerPlan
from msgraph.generated.models.planner_plan_container import PlannerPlanContainer
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PlannerPlan(
	container = PlannerPlanContainer(
		url = "https://graph.microsoft.com/v1.0/groups/ebf3b108-5234-4e22-b93d-656d7dae5874",
	),
	title = "title-value",
)

result = await graph_client.planner.plans.post(request_body)


```