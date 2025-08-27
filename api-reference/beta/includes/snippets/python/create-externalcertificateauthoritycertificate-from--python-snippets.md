---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.networkaccess.external_certificate_authority_certificate import ExternalCertificateAuthorityCertificate
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ExternalCertificateAuthorityCertificate(
	odata_type = "#microsoft.graph.networkaccess.externalCertificateAuthorityCertificate",
	name = "Contoso Enterprise CA",
	common_name = "Contoso Enterprise Root CA",
	organization_name = "Contoso Ltd",
)

result = await graph_client.network_access.tls.external_certificate_authority_certificates.post(request_body)


```