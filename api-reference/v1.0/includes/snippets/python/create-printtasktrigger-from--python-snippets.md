---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.print_task_trigger import PrintTaskTrigger
from msgraph.generated.models.print_event import PrintEvent
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PrintTaskTrigger(
	event = PrintEvent.JobStarted,
	additional_data = {
			"definition@odata_bind" : "https://graph.microsoft.com/v1.0/print/taskDefinitions/{taskDefinitionId}",
	}
)

result = await graph_client.print.printers.by_printer_id('printer-id').task_triggers.post(request_body)


```