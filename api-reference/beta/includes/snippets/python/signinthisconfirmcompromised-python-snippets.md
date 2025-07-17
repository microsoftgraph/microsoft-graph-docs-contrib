---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.auditlogs.signins.confirm_compromised.confirm_compromised_post_request_body import ConfirmCompromisedPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ConfirmCompromisedPostRequestBody(
	request_ids = [
		"f01c6af6-6683-4a37-a945-0a925501eede",
		"42bf60ac-d0cb-4206-aa5c-101884298f55",
		"f09c8f14-8d8e-42cf-8a7e-732b0594e79b",
	],
)

await graph_client.audit_logs.sign_ins.confirm_compromised.post(request_body)


```