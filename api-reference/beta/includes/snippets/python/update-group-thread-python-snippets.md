---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.conversation_thread import ConversationThread
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = ConversationThread(
	additional_data = {
			"original_start_time_zone" : "originalStartTimeZone-value",
			"original_end_time_zone" : "originalEndTimeZone-value",
			"response_status" : {
					"response" : "",
					"time" : "datetime-value",
			},
			"uid" : "iCalUId-value",
			"reminder_minutes_before_start" : 99,
			"is_reminder_on" : True,
	}
)

result = await graph_client.groups.by_group_id('group-id').threads.by_conversation_thread_id('conversationThread-id').patch(request_body)


```