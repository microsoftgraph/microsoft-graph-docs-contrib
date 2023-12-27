---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = SendVirtualAppointmentReminderSmsPostRequestBody(
	phone_numbers = [
		"+13129224122",
		"+1242421412",
	],
	remind_before_time_in_minutes_type = RemindBeforeTimeInMinutesType.Mins15,
)

await graph_client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').send_virtual_appointment_reminder_sms.post(request_body)


```