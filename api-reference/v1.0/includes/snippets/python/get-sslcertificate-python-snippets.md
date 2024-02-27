---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.security.threat_intelligence.ssl_certificates.by_ssl_certificate_id('sslCertificate-id').get()


```