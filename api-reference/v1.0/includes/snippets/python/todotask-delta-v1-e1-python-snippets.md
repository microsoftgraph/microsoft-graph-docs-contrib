---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.todo.lists.item.tasks.delta.delta_request_builder import DeltaRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)

query_params = DeltaRequestBuilder.DeltaRequestBuilderGetQueryParameters(
		deltatoken = "w0vf2jHg2mBXU-I2AK0FSWl0dopNtG8u5YoM",
)

request_configuration = DeltaRequestBuilder.DeltaRequestBuilderGetRequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.todo.lists.by_todo_task_list_id('todoTaskList-id').tasks.delta.get(request_configuration = request_configuration)


```