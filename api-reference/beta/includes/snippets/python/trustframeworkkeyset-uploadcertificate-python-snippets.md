---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = UploadCertificatePostRequestBody(
	key = "key-value",
)

result = await graph_client.trust_framework.key_sets.by_trust_framework_key_set_id('trustFrameworkKeySet-id').upload_certificate.post(request_body)


```