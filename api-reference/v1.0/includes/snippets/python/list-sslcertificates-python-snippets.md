---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.security.threat_intelligence.ssl_certificates.ssl_certificates_request_builder import SslCertificatesRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration

graph_client = GraphServiceClient(credentials, scopes)

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