---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.domains.item.verify.verify_post_request_body import VerifyPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = VerifyPostRequestBody(
	additional_data = {
			"force_takeover" : True,
	}
)

result = await graph_client.domains.by_domain_id('domain-id').verify.post(request_body)


```