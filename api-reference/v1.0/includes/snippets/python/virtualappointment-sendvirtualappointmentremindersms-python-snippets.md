---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.onlinemeetings.item.send_virtual_appointment_reminder_sms.send_virtual_appointment_reminder_sms_post_request_body import SendVirtualAppointmentReminderSmsPostRequestBody
from msgraph.generated.models.attendee_notification_info import AttendeeNotificationInfo
from msgraph.generated.models.remind_before_time_in_minutes_type import RemindBeforeTimeInMinutesType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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