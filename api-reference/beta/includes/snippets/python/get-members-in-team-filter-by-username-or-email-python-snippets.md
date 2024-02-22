---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.teams.item.members.members_request_builder import MembersRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = MembersRequestBuilder.MembersRequestBuilderGetQueryParameters(
		filter = "(microsoft.graph.aadUserConversationMember/displayName eq 'Harry Johnson' or microsoft.graph.aadUserConversationMember/email eq 'admin@contoso.com')",
)

request_configuration = MembersRequestBuilder.MembersRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.teams.by_team_id('team-id').members.get(request_configuration = request_configuration)


```