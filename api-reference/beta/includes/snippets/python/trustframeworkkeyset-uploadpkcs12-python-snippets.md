---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = UploadPkcs12PostRequestBody(
	key = "Base64-encoded-pfx-content",
	password = "password-value",
)

result = await graph_client.trust_framework.key_sets.by_key_set_id('trustFrameworkKeySet-id').upload_pkcs12.post(body = request_body)


```