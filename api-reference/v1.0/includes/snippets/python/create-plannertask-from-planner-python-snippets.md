---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PlannerTask()
request_body.plan_id = 'xqQg5FS2LkCp935s-FIFm2QAFkHM'

request_body.bucket_id = 'hsOf2dhOJkqyYYZEtdzDe2QAIUCR'

request_body.title = 'Update client list'

assignments = PlannerAssignments()
additional_data = [
'fbab97d0-4932-4511-b675-204639209557' => assignments = Fbab97d0-4932-4511-b675-204639209557()
		assignments.@odata_type = '#microsoft.graph.plannerAssignment'

		assignments.order_hint = ' !'


assignments.fbab97d0-4932-4511-b675-204639209557 = fbab97d0-4932-4511-b675-204639209557

];
assignments.additional_data(additional_data)



request_body.assignments = assignments



result = await client.planner.tasks.post(request_body = request_body)


```