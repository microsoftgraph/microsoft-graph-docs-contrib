---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = ConversationThread()
additional_data = [
'original_start_time_zone' => 'originalStartTimeZone-value', 
'original_end_time_zone' => 'originalEndTimeZone-value', 
'response_status' => request_body = ResponseStatus()
		request_body.response = ''

		request_body.time = 'datetime-value'


request_body.response_status = responseStatus

'uid' => 'iCalUId-value', 
'reminder_minutes_before_start' => 99,
'is_reminder_on' => true,
];
request_body.additional_data(additional_data)





result = await client.groups.by_group_id('group-id').threads.by_thread_id('conversationThread-id').patch(request_body = request_body)


```