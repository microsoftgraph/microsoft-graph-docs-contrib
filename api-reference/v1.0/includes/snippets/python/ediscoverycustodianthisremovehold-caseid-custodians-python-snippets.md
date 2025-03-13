---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.security.cases.ediscoverycases.item.custodians.microsoft_graph_security_remove_hold.remove_hold_post_request_body import RemoveHoldPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = RemoveHoldPostRequestBody(
	ids = [
		"7f697316-43ed-48e1-977f-261be050db93",
		"b26888b3-e1f5-47c5-bdf2-33d1b90cb2e8",
	],
)

await graph_client.security.cases.ediscovery_cases.by_ediscovery_case_id('ediscoveryCase-id').custodians.microsoft_graph_security_remove_hold.post(request_body)


```