---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CreatePostRequestBody()
request_body.display_name = 'Test Printer'

request_body.manufacturer = 'Test Printer Manufacturer'

request_body.model = 'Test Printer Model'

request_body.physicalDeviceId=null

request_body.has_physical_device = False

certificate_signing_request = PrintCertificateSigningRequest()
certificate_signing_request.content = '{content}'

certificate_signing_request.transport_key = '{sampleTransportKey}'


request_body.certificate_signing_request = certificate_signing_request
request_body.connectorId=null




await client.print.printers.create.post(request_body = request_body)


```