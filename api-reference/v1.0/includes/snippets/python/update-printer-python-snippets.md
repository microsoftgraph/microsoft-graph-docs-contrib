---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.printer import Printer
from msgraph.generated.models.printer_location import PrinterLocation
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = Printer(
	location = PrinterLocation(
		latitude = 1.1,
		longitude = 2.2,
		altitude_in_meters = 3,
	),
	additional_data = {
			"name" : "PrinterName",
	}
)

result = await graph_client.print.printers.by_printer_id('printer-id').patch(request_body)


```