---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.me.outlook.task_groups.by_outlook_task_group_id('outlookTaskGroup-id').get()


```