---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = PlannerTask(
	plan_id = "xqQg5FS2LkCp935s-FIFm2QAFkHM",
	bucket_id = "hsOf2dhOJkqyYYZEtdzDe2QAIUCR",
	title = "Update client list",
	assignments = PlannerAssignments(
		additional_data = {
				"fbab97d0-4932-4511-b675-204639209557" : {
						"@odata_type" : "#microsoft.graph.plannerAssignment",
						"order_hint" : " !",
				},
		}
	),
)

result = await graph_client.planner.tasks.post(request_body)


```