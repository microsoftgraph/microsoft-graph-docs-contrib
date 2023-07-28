---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PlannerAssignedToTaskBoardTaskFormat()
order_hints_by_assignee = PlannerOrderHintsByAssignee()
additional_data = [
'aaa27244-1db4-476a-a5cb-004607466324' => '8566473P 957764Jk!', 
];
order_hints_by_assignee.additional_data(additional_data)



request_body.order_hints_by_assignee = order_hints_by_assignee


request_configuration = AssignedToTaskBoardFormatRequestBuilder.AssignedToTaskBoardFormatRequestBuilderPatchRequestConfiguration(
headers = {
		'Prefer' : "return=representation",
		'If-Match' : "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"",
}

)


result = await client.planner.tasks.by_task_id('plannerTask-id').assigned_to_task_board_format.patch(request_body = request_body, request_configuration = request_configuration)


```