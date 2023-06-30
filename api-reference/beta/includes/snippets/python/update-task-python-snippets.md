---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PrintTask()
status = PrintTaskStatus()
status.state(PrintTaskProcessingState.Completed('printtaskprocessingstate.completed'))

status.description = 'completed'


request_body.status = status



result = await client.print.task_definitions.by_task_definition_id('printTaskDefinition-id').tasks.by_task_id('printTask-id').patch(request_body = request_body)


```