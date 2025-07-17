---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.printer import Printer
from msgraph_beta.generated.models.printer_location import PrinterLocation
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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