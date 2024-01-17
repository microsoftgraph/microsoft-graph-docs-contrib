---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.users.by_user_id('user-id').outlook.tasks.by_outlook_task_id('outlookTask-id').attachments.get()


```