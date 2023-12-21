---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = CertificateBasedApplicationConfiguration(
	odata_type = "#microsoft.graph.certificateBasedApplicationConfiguration",
	display_name = "New display name",
	description = "New description text",
)

result = await graph_client.directory.certificate_authorities.certificate_based_application_configurations.by_certificate_based_application_configuration_id('certificateBasedApplicationConfiguration-id').patch(request_body)


```