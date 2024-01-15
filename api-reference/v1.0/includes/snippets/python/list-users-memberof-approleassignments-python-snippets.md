---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

query_params = GroupRequestBuilder.GroupRequestBuilderGetQueryParameters(
		filter = "appRoleAssignments/$count gt 0",
		select = ["id","displayName"],
)

request_configuration = GroupRequestBuilder.GroupRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.users.by_user_id('user-id').member_of.graph_group.get(request_configuration = request_configuration)


```