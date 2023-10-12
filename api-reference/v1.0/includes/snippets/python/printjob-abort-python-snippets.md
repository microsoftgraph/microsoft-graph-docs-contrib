---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = AbortPostRequestBody(
	reason = "String",
)

await graph_client.print.printers.by_printer_id('printer-id').jobs.by_job_id('printJob-id').abort.post(body = request_body)


```