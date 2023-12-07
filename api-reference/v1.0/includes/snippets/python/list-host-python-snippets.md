---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = SslCertificatesRequestBuilder.SslCertificatesRequestBuilderGetQueryParameters(
		count = True,
		top = 1,
		skip = 5,
)

request_configuration = SslCertificatesRequestBuilder.SslCertificatesRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.security.threat_intelligence.hosts.by_host_id('host-id').ssl_certificates.get(request_configuration = request_configuration)


```