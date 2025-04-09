---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.print.printers.create.create_post_request_body import CreatePostRequestBody
from msgraph.generated.models.print_certificate_signing_request import PrintCertificateSigningRequest
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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