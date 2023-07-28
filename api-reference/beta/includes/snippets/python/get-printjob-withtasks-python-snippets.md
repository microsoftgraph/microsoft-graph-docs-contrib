---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = PrintJobRequestBuilder.PrintJobRequestBuilderGetQueryParameters(
		expand = ["tasks"],
)

request_configuration = PrintJobRequestBuilder.PrintJobRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.print.printers.by_printer_id('printer-id').jobs.by_job_id('printJob-id').get(request_configuration = request_configuration)


```