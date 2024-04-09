---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.planner.tasks.by_planner_task_id('plannerTask-id').bucket_task_board_format.get()


```