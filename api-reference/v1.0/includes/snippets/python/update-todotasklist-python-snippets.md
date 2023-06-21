---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TodoTaskList()
request_body.display_name = 'Vacation Plan'




result = await client.me.todo.lists.by_list_id('todoTaskList-id').patch(request_body = request_body)


```