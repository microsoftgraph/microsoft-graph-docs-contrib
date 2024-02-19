---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.print_task import PrintTask
from msgraph.generated.models.print_task_status import PrintTaskStatus

graph_client = GraphServiceClient(credentials, scopes)

request_body = PrintTask(
	status = PrintTaskStatus(
		state = PrintTaskProcessingState.Completed,
		description = "completed",
	),
)

result = await graph_client.print.task_definitions.by_print_task_definition_id('printTaskDefinition-id').tasks.by_print_task_id('printTask-id').patch(request_body)


```