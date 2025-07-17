---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.trust_framework_key_set import TrustFrameworkKeySet
from msgraph_beta.generated.models.trust_framework_key import TrustFrameworkKey
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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