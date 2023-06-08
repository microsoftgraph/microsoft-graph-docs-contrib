---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = UploadSecretPostRequestBody()
request_body.use = 'use-value'

request_body.k = 'application-secret-to-be-uploaded'

request_body.Nbf = 1508969811

request_body.Exp = 1508973711




result = await client.trust_framework.key_sets.by_key_set_id('trustFrameworkKeySet-id').upload_secret.post(request_body = request_body)


```