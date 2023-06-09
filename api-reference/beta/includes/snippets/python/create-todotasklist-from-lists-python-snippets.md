---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = TodoTaskList()
request_body.display_name = 'Travel items'




result = await client.me.todo.lists.post(request_body = request_body)


```