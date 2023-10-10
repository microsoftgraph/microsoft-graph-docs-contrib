---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = ConversationThread(
	additional_data = {
			"original_start_time_zone" : "originalStartTimeZone-value",
			"original_end_time_zone" : "originalEndTimeZone-value",
			"response_status" : (
				response = "",
				time = "datetime-value",
			),
			"uid" : "iCalUId-value",
			"reminder_minutes_before_start" : 99,
			"is_reminder_on" : True,
	}
)

result = await graph_client.groups.by_group_id('group-id').threads.by_thread_id('conversationThread-id').patch(body = request_body)


```