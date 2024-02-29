---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.outlook.tasks.item.outlook_task_item_request_builder import OutlookTaskItemRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = OutlookTaskItemRequestBuilder.OutlookTaskItemRequestBuilderGetRequestConfiguration()
request_configuration.headers.add("Prefer", "outlook.timezone=\"Pacific Standard Time\"")


result = await graph_client.me.outlook.tasks.by_outlook_task_id('outlookTask-id').get(request_configuration = request_configuration)


```