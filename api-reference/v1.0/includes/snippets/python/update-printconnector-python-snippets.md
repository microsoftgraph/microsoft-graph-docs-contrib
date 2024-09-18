---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.print_connector import PrintConnector
from msgraph.generated.models.printer_location import PrinterLocation

graph_client = GraphServiceClient(credentials, scopes)

request_body = PrintConnector(
	display_name = "ConnectorName",
	fully_qualified_domain_name = "CONNECTOR-MACHINE",
	operating_system = "Microsoft Windows 10 Enterprise Insider Preview | 10.0.19555",
	app_version = "0.19.7338.23496",
	location = PrinterLocation(
		latitude = 1.1,
		longitude = 2.2,
		altitude_in_meters = 3,
	),
)

result = await graph_client.print.connectors.by_print_connector_id('printConnector-id').patch(request_body)


```