---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.planner.tasks.item.messages.item.unset_reaction.unset_reaction_post_request_body import UnsetReactionPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = UnsetReactionPostRequestBody(
	reaction_type = "like",
)

await graph_client.planner.tasks.by_planner_task_id('plannerTask-id').messages.by_planner_task_chat_message_id('plannerTaskChatMessage-id').unset_reaction.post(request_body)


```