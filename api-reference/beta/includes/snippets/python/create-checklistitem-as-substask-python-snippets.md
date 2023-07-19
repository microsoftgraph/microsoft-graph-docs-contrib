---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ChecklistItem()
request_body.display_name = 'Final sign-off from the team'




result = await client.me.todo.lists.by_list_id('todoTaskList-id').tasks.by_task_id('todoTask-id').checklist_items.post(request_body = request_body)


```