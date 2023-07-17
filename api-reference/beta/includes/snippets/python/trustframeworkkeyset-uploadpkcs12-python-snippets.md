---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UploadPkcs12PostRequestBody()
request_body.key = 'Base64-encoded-pfx-content'

request_body.password = 'password-value'




result = await client.trust_framework.key_sets.by_key_set_id('trustFrameworkKeySet-id').upload_pkcs12.post(request_body = request_body)


```