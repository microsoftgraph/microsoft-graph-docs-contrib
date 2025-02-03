---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.planner_task import PlannerTask
from msgraph.generated.models.planner_assignments import PlannerAssignments
from msgraph.generated.models.planner_assignment import PlannerAssignment
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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