---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PrintTaskTrigger()
request_body.event(PrintEvent.JobStarted('printevent.jobstarted'))

additional_data = [
'definition@odata_bind' => 'https://graph.microsoft.com/beta/print/taskDefinitions/3203656e-6069-4e10-8147-d25290b00a3c', 
];
request_body.additional_data(additional_data)





result = await client.print.printers.by_printer_id('printer-id').task_triggers.post(request_body = request_body)


```