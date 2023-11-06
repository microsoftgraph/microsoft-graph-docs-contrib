---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = PrintTaskTrigger(
	event = PrintEvent.JobStarted,
	additional_data = {
			"definition@odata_bind" : "https://graph.microsoft.com/beta/print/taskDefinitions/3203656e-6069-4e10-8147-d25290b00a3c",
	}
)

result = await graph_client.print.printers.by_printer_id('printer-id').task_triggers.post(request_body)


```