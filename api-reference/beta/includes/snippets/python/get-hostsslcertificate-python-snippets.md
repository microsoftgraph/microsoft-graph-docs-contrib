---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.security.threat_intelligence.host_ssl_certificates.by_host_ssl_certificate_id('hostSslCertificate-id').get()


```