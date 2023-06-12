---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = GenerateKeyPostRequestBody()
request_body.use = 'sig'

request_body.kty = 'RSA'

request_body.Nbf = 1508969811

request_body.Exp = 1508969811




result = await client.trust_framework.key_sets.by_key_set_id('trustFrameworkKeySet-id').generate_key.post(request_body = request_body)


```