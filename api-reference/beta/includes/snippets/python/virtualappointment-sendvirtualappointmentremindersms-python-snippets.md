---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.users.item.onlinemeetings.item.send_virtual_appointment_reminder_sms.send_virtual_appointment_reminder_sms_post_request_body import SendVirtualAppointmentReminderSmsPostRequestBody
from msgraph.generated.models.attendee_notification_info import AttendeeNotificationInfo

graph_client = GraphServiceClient(credentials, scopes)

request_body = SendVirtualAppointmentReminderSmsPostRequestBody(
	attendees = [
		AttendeeNotificationInfo(
			phone_number = "+13129224122",
			time_zone = "Pacific Standard Time",
		),
		AttendeeNotificationInfo(
			phone_number = "+1242421412",
			time_zone = "Eastern Standard Time",
		),
	],
	remind_before_time_in_minutes_type = RemindBeforeTimeInMinutesType.Mins15,
)

await graph_client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').send_virtual_appointment_reminder_sms.post(request_body)


```