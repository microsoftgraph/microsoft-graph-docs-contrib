---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PlannerTask()
assignments = PlannerAssignments()
additional_data = [
'fbab97d0-4932-4511-b675-204639209557' => assignments = Fbab97d0-4932-4511-b675-204639209557()
		assignments.@odata_type = '#microsoft.graph.plannerAssignment'

		assignments.order_hint = 'N9917 U2883!'


assignments.fbab97d0-4932-4511-b675-204639209557 = fbab97d0-4932-4511-b675-204639209557

];
assignments.additional_data(additional_data)



request_body.assignments = assignments
applied_categories = PlannerAppliedCategories()
additional_data = [
'category3' => true,
'category4' => false,
];
applied_categories.additional_data(additional_data)



request_body.applied_categories = applied_categories


request_configuration = PlannerTaskRequestBuilder.PlannerTaskRequestBuilderPatchRequestConfiguration(
headers = {
		'Prefer' : "return=representation",
		'If-Match' : "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"",
}

)


result = await client.planner.tasks.by_task_id('plannerTask-id').patch(request_body = request_body, request_configuration = request_configuration)


```