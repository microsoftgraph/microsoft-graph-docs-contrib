---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.todo.lists.item.tasks.delta.delta_request_builder import DeltaRequestBuilder
from kiota_abstractions.base_request_configuration import RequestConfiguration
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
query_params = DeltaRequestBuilder.DeltaRequestBuilderGetQueryParameters(
		deltatoken = "w0vf2jHg2mBXU-I2AK0FSWl0dopNtG8u5YoM",
)

request_configuration = RequestConfiguration(
query_parameters = query_params,
)

result = await graph_client.me.todo.lists.by_todo_task_list_id('todoTaskList-id').tasks.delta.get(request_configuration = request_configuration)


```