---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PlannerRoster()
request_body.@odata_type = '#microsoft.graph.plannerRoster'




result = await client.planner.rosters.post(request_body = request_body)


```