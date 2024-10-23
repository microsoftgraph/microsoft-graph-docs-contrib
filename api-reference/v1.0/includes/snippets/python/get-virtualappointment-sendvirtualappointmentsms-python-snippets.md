---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.users.item.onlinemeetings.item.send_virtual_appointment_sms.send_virtual_appointment_sms_post_request_body import SendVirtualAppointmentSmsPostRequestBody
from msgraph.generated.models.attendee_notification_info import AttendeeNotificationInfo
from msgraph.generated.models.virtual_appointment_message_type import VirtualAppointmentMessageType
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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