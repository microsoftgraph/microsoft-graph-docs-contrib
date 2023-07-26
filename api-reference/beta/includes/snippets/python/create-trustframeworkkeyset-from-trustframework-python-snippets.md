---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TrustFrameworkKeySet()
request_body.id = 'keyset1'

keys_trust_framework_key1 = TrustFrameworkKey()
keys_trust_framework_key1.k = 'k-value'

keys_trust_framework_key1.X5c(['x5c-value', ])

keys_trust_framework_key1.x5t = 'x5t-value'

keys_trust_framework_key1.kty = 'kty-value'

keys_trust_framework_key1.use = 'use-value'

keys_trust_framework_key1.Exp = 99

keys_trust_framework_key1.Nbf = 99

keys_trust_framework_key1.kid = 'kid-value'

keys_trust_framework_key1.e = 'e-value'

keys_trust_framework_key1.n = 'n-value'

keys_trust_framework_key1.d = 'd-value'

keys_trust_framework_key1.p = 'p-value'

keys_trust_framework_key1.q = 'q-value'

keys_trust_framework_key1.dp = 'dp-value'

keys_trust_framework_key1.dq = 'dq-value'

keys_trust_framework_key1.qi = 'qi-value'


keysArray []= keysTrustFrameworkKey1;
request_body.keys(keysArray)





result = await client.trust_framework.key_sets.post(request_body = request_body)


```