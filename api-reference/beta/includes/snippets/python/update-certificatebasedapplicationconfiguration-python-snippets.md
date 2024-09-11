---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.certificate_based_application_configuration import CertificateBasedApplicationConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CertificateBasedApplicationConfiguration(
	odata_type = "#microsoft.graph.certificateBasedApplicationConfiguration",
	display_name = "New display name",
	description = "New description text",
)

result = await graph_client.directory.certificate_authorities.certificate_based_application_configurations.by_certificate_based_application_configuration_id('certificateBasedApplicationConfiguration-id').patch(request_body)


```