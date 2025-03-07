---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.threat_intelligence.ssl_certificates.ssl_certificates_request_builder import SslCertificatesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = SslCertificatesRequestBuilder.SslCertificatesRequestBuilderGetQueryParameters(
		search = "\"subject/commonName:microsoft.com\"",
		count = True,
		top = 1,
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.security.threat_intelligence.ssl_certificates.get(request_configuration = request_configuration)


```