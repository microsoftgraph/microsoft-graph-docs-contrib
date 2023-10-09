---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = GenerateKeyPostRequestBody(
	use = "sig",
	kty = "RSA",
	nbf = 1508969811,
	exp = 1508969811,
)

result = await graph_client.trust_framework.key_sets.by_key_set_id('trustFrameworkKeySet-id').generate_key.post(body = request_body)


```