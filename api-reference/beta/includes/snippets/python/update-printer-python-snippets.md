---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = Printer(
	name = "PrinterName",
	location = PrinterLocation(
		latitude = 1.1,
		longitude = 2.2,
		altitude_in_meters = 3,
	),
)

result = await graph_client.print.printers.by_printer_id('printer-id').patch(request_body)


```