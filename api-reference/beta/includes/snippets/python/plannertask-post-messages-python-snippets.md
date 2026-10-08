---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.planner_task_chat_message import PlannerTaskChatMessage
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PlannerTaskChatMessage(
	content = "This is a new chat message",
)

result = await graph_client.planner.tasks.by_planner_task_id('plannerTask-id').messages.post(request_body)


```