---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.print_connector import PrintConnector
from msgraph_beta.generated.models.printer_location import PrinterLocation
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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