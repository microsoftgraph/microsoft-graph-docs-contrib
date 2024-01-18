---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = ChecklistItem(
	display_name = "Final sign-off from the team",
)

result = await graph_client.me.todo.lists.by_todo_task_list_id('todoTaskList-id').tasks.by_todo_task_id('todoTask-id').checklist_items.post(request_body)


```