---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.planner_task_chat_message import PlannerTaskChatMessage
from msgraph_beta.generated.models.planner_task_chat_mention import PlannerTaskChatMention
from msgraph_beta.generated.models.planner_task_chat_mention_type import PlannerTaskChatMentionType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = PlannerTaskChatMessage(
	content = "<div><span itemid=\"0\" itemtype=\"https://schema.skype.com/Mention/Person\"></span> Please review this task</div>",
	mentions = [
		PlannerTaskChatMention(
			mentioned = "6463a5ce-2119-4198-9f2a-628761df4a62",
			position = 0,
			mention_type = PlannerTaskChatMentionType.User,
		),
	],
)

result = await graph_client.planner.tasks.by_planner_task_id('plannerTask-id').messages.post(request_body)


```