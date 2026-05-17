---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.agent_user import AgentUser
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AgentUser(
	odata_type = "#microsoft.graph.agentUser",
	account_enabled = True,
	display_name = "Adele Vance",
	mail_nickname = "AdeleV",
	user_principal_name = "AdeleV@contoso.com",
	identity_parent_id = "",
)

result = await graph_client.users.post(request_body)


```