---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.trustframework.keysets.item.upload_certificate.upload_certificate_post_request_body import UploadCertificatePostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = UploadCertificatePostRequestBody(
	key = "key-value",
)

result = await graph_client.trust_framework.key_sets.by_trust_framework_key_set_id('trustFrameworkKeySet-id').upload_certificate.post(request_body)


```