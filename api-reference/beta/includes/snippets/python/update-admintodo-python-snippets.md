---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = AdminTodo()
request_body.@odata_type = '#microsoft.graph.adminTodo'

settings = TodoSettings()
settings.@odata_type = 'microsoft.graph.todoSettings'

settings.is_push_notification_enabled = True

settings.is_external_join_enabled = False

settings.is_external_share_enabled = True


request_body.settings = settings



result = await client.admin.todo.patch(request_body = request_body)


```