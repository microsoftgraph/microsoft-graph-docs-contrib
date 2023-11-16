---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = CreatePostRequestBody(
	display_name = "Test Printer",
	manufacturer = "Test Printer Manufacturer",
	model = "Test Printer Model",
	physical_device_id = None,
	has_physical_device = False,
	certificate_signing_request = PrintCertificateSigningRequest(
		content = "{content}",
		transport_key = "{sampleTransportKey}",
	),
	connector_id = None,
)

await graph_client.print.printers.create.post(request_body)


```