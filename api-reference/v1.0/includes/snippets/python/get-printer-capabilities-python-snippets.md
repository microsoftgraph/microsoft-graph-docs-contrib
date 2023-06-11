---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = PrinterRequestBuilder.PrinterRequestBuilderGetQueryParameters(
		select = ["id","displayName","capabilities"],
)

request_configuration = PrinterRequestBuilder.PrinterRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.print.printers.by_printer_id('printer-id').get(request_configuration = request_configuration)


```