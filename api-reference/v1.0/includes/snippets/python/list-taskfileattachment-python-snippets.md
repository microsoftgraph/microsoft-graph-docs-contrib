---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)


result = await graph_client.me.todo.lists.by_list_id('todoTaskList-id').tasks.by_task_id('todoTask-id').attachments.get()


```