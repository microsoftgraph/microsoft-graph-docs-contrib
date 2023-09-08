---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

query_params = GroupRequestBuilder.GroupRequestBuilderGetQueryParameters(
		select = ["isManagementRestricted"],
)

request_configuration = GroupRequestBuilder.GroupRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.groups.by_group_id('group-id').get(request_configuration = request_configuration)


```