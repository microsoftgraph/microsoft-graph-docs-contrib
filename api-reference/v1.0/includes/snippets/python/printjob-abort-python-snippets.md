---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AbortPostRequestBody()
request_body.reason = 'String'




await client.print.printers.by_printer_id('printer-id').jobs.by_job_id('printJob-id').abort.post(request_body = request_body)


```