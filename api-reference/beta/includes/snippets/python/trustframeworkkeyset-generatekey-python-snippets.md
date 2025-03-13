---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.trustframework.keysets.item.generate_key.generate_key_post_request_body import GenerateKeyPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = GenerateKeyPostRequestBody(
	use = "sig",
	kty = "RSA",
	nbf = 1508969811,
	exp = 1508969811,
)

result = await graph_client.trust_framework.key_sets.by_trust_framework_key_set_id('trustFrameworkKeySet-id').generate_key.post(request_body)


```