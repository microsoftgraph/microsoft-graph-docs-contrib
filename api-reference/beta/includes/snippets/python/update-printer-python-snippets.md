---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Printer()
request_body.name = 'PrinterName'

location = PrinterLocation()
location.Latitude = 1.1

location.Longitude = 2.2

location.AltitudeInMeters = 3


request_body.location = location



result = await client.print.printers.by_printer_id('printer-id').patch(request_body = request_body)


```