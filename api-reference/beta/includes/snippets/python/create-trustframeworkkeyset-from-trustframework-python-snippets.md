---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.trust_framework_key_set import TrustFrameworkKeySet
from msgraph.generated.models.trust_framework_key import TrustFrameworkKey

graph_client = GraphServiceClient(credentials, scopes)

request_body = TrustFrameworkKeySet(
	id = "keyset1",
	keys = [
		TrustFrameworkKey(
			k = "k-value",
			x5c = [
				"x5c-value",
			],
			x5t = "x5t-value",
			kty = "kty-value",
			use = "use-value",
			exp = 99,
			nbf = 99,
			kid = "kid-value",
			e = "e-value",
			n = "n-value",
			d = "d-value",
			p = "p-value",
			q = "q-value",
			dp = "dp-value",
			dq = "dq-value",
			qi = "qi-value",
		),
	],
)

result = await graph_client.trust_framework.key_sets.post(request_body)


```