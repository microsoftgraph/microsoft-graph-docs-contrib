---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = PrintTask(
	status = PrintTaskStatus(
		state = PrintTaskProcessingState.Completed,
		description = "completed",
	),
)

result = await graph_client.print.task_definitions.by_print_task_definition_id('printTaskDefinition-id').tasks.by_print_task_id('printTask-id').patch(request_body)


```