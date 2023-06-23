---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UploadCertificatePostRequestBody()
request_body.key = 'key-value'




result = await client.trust_framework.key_sets.by_key_set_id('trustFrameworkKeySet-id').upload_certificate.post(request_body = request_body)


```