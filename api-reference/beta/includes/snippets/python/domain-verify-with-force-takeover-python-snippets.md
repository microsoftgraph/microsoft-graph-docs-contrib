---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.domains.item.verify.verify_post_request_body import VerifyPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = VerifyPostRequestBody(
	additional_data = {
			"force_takeover" : True,
	}
)

result = await graph_client.domains.by_domain_id('domain-id').verify.post(request_body)


```