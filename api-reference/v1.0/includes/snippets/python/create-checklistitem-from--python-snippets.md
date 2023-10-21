---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ChecklistItem(
	display_name = "Final sign-off from the team",
)

result = await graph_client.me.todo.lists.by_list_id('todoTaskList-id').tasks.by_task_id('todoTask-id').checklist_items.post(body = request_body)


```