---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.conversation_thread import ConversationThread

graph_client = GraphServiceClient(credentials, scopes)

request_body = ConversationThread(
	additional_data = {
			"original_start_time_zone" : "originalStartTimeZone-value",
			"original_end_time_zone" : "originalEndTimeZone-value",
			"response_status" : {
					"response" : "",
					"time" : "datetime-value",
			},
			"i_cal_u_id" : "iCalUId-value",
			"reminder_minutes_before_start" : 99,
			"is_reminder_on" : True,
	}
)

result = await graph_client.groups.by_group_id('group-id').threads.by_conversation_thread_id('conversationThread-id').patch(request_body)


```