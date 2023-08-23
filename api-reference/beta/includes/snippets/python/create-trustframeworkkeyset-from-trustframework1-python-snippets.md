---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = TrustFrameworkKeySet(
	id = "keyset1",
)

result = await graph_client.trust_framework.key_sets.post(request_body = request_body)


```