---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.domains.item.force_delete.force_delete_post_request_body import ForceDeletePostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ForceDeletePostRequestBody(
	disable_user_accounts = True,
)

await graph_client.domains.by_domain_id('domain-id').force_delete.post(request_body)


```