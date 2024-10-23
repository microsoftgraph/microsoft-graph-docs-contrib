---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.print_task import PrintTask
from msgraph_beta.generated.models.print_task_status import PrintTaskStatus
from msgraph_beta.generated.models.print_task_processing_state import PrintTaskProcessingState
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PrintTask(
	status = PrintTaskStatus(
		state = PrintTaskProcessingState.Completed,
		description = "completed",
	),
)

result = await graph_client.print.task_definitions.by_print_task_definition_id('printTaskDefinition-id').tasks.by_print_task_id('printTask-id').patch(request_body)


```