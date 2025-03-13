---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.admin_todo import AdminTodo
from msgraph_beta.generated.models.todo_settings import TodoSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = AdminTodo(
	odata_type = "#microsoft.graph.adminTodo",
	settings = TodoSettings(
		odata_type = "microsoft.graph.todoSettings",
		is_push_notification_enabled = True,
		is_external_join_enabled = False,
		is_external_share_enabled = True,
	),
)

result = await graph_client.admin.todo.patch(request_body)


```