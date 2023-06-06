---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

query_params = MembersRequestBuilder.MembersRequestBuilderGetQueryParameters(
		filter = "(microsoft.graph.aadUserConversationMember/displayName eq 'Harry Johnson' or microsoft.graph.aadUserConversationMember/email eq 'admin@M365x987948.OnMicrosoft.com')",
)

request_configuration = MembersRequestBuilder.MembersRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)


result = await client.teams.by_team_id('team-id').members.get(request_configuration = request_configuration)


```