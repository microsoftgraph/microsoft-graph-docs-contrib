---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = SendVirtualAppointmentReminderSmsPostRequestBody(
	remind_before_time_in_minutes_type = RemindBeforeTimeInMinutesType.Mins15,
	additional_data = {
			"phone_numbers" : [
				"+13129224122",
				"+1242421412",
			],
	}
)

await graph_client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').send_virtual_appointment_reminder_sms.post(request_body)


```