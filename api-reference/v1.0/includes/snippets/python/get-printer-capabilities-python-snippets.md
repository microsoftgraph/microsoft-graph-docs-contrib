---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = PrinterItemRequestBuilder.PrinterItemRequestBuilderGetQueryParameters(
		select = ["id","displayName","capabilities"],
)

request_configuration = PrinterItemRequestBuilder.PrinterItemRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.print.printers.by_printer_id('printer-id').get(request_configuration = request_configuration)


```