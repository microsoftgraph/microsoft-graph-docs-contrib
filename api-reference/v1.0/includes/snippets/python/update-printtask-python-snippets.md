---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = PrintTask(
	status = PrintTaskStatus(
		state = PrintTaskProcessingState.Completed,
		description = "completed",
	),
)

result = await graph_client.print.task_definitions.by_task_definition_id('printTaskDefinition-id').tasks.by_task_id('printTask-id').patch(body = request_body)


```