---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.send_virtual_appointment_sms_post_request_body import SendVirtualAppointmentSmsPostRequestBody
from msgraph.generated.models.attendee_notification_info import AttendeeNotificationInfo

graph_client = GraphServiceClient(credentials, scopes)

request_body = SendVirtualAppointmentSmsPostRequestBody(
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
	message_type = VirtualAppointmentMessageType.Confirmation,
)

await graph_client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').send_virtual_appointment_sms.post(request_body)


```