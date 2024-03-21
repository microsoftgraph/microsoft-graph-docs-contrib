---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.me.outlook.task_folders.by_outlook_task_folder_id('outlookTaskFolder-id').get()


```