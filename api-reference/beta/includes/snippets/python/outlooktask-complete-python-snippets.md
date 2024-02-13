---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.outlook.tasks.item.complete.complete_request_builder import CompleteRequestBuilder

graph_client = GraphServiceClient(credentials, scopes)


request_configuration = CompleteRequestBuilder.CompleteRequestBuilderPostRequestConfiguration()
request_configuration.headers.add("Prefer", "outlook.timezone=\"Pacific Standard Time\"")


result = await graph_client.me.outlook.tasks.by_outlook_task_id('outlookTask-id').complete.post(request_configuration = request_configuration)


```