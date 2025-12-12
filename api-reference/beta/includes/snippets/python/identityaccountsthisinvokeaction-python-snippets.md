---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.security.identities.identityaccounts.item.microsoft_graph_security_invoke_action.invoke_action_post_request_body import InvokeActionPostRequestBody
from msgraph_beta.generated.models.action import Action
from msgraph_beta.generated.models.identity_provider import IdentityProvider
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = InvokeActionPostRequestBody(
	account_id = "256db173-930a-4991-9061-0d51a9a93ba5",
	action = Action.Disable,
	identity_provider = IdentityProvider.ActiveDirectory,
)

result = await graph_client.security.identities.identity_accounts.by_identity_accounts_id('identityAccounts-id').microsoft_graph_security_invoke_action.post(request_body)


```