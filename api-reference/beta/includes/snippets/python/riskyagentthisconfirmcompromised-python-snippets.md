---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.identityprotection.riskyagents.confirm_compromised.confirm_compromised_post_request_body import ConfirmCompromisedPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ConfirmCompromisedPostRequestBody(
	agent_ids = [
		"29f270bb-4d23-4f68-8a57-dc73dc0d4caf",
		"20f91ec9-d140-4d90-9cd9-f618587a1471",
	],
)

await graph_client.identity_protection.risky_agents.confirm_compromised.post(request_body)


```