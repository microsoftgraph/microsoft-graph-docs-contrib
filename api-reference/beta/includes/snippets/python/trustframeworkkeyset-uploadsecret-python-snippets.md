---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.upload_secret_post_request_body import UploadSecretPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = UploadSecretPostRequestBody(
	use = "use-value",
	k = "application-secret-to-be-uploaded",
	nbf = 1508969811,
	exp = 1508973711,
)

result = await graph_client.trust_framework.key_sets.by_trust_framework_key_set_id('trustFrameworkKeySet-id').upload_secret.post(request_body)


```