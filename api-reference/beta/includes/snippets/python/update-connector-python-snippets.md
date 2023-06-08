---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PrintConnector()
request_body.display_name = 'ConnectorName'

request_body.fully_qualified_domain_name = 'CONNECTOR-MACHINE'

request_body.operating_system = 'Microsoft Windows 10 Enterprise Insider Preview | 10.0.19555'

request_body.app_version = '0.19.7338.23496'

location = PrinterLocation()
location.Latitude = 1.1

location.Longitude = 2.2

location.AltitudeInMeters = 3


request_body.location = location



result = await client.print.connectors.by_connector_id('printConnector-id').patch(request_body = request_body)


```