---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.generate_key_post_request_body import GenerateKeyPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = GenerateKeyPostRequestBody(
	use = "sig",
	kty = "RSA",
	nbf = 1508969811,
	exp = 1508969811,
)

result = await graph_client.trust_framework.key_sets.by_trust_framework_key_set_id('trustFrameworkKeySet-id').generate_key.post(request_body)


```