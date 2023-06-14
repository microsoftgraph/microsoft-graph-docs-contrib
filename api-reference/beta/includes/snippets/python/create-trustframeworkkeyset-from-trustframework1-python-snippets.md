---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TrustFrameworkKeySet()
request_body.id = 'keyset1'




result = await client.trust_framework.key_sets.post(request_body = request_body)


```