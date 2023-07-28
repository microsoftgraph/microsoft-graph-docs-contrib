---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PlannerPlan()
container = PlannerPlanContainer()
container.url = 'https://graph.microsoft.com/beta/groups/ebf3b108-5234-4e22-b93d-656d7dae5874'


request_body.container = container
request_body.title = 'title-value'




result = await client.planner.plans.post(request_body = request_body)


```