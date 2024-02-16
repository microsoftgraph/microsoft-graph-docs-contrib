---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.send_virtual_appointment_sms_post_request_body import SendVirtualAppointmentSmsPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = SendVirtualAppointmentSmsPostRequestBody(
	additional_data = {
			"phone_numbers" : [
				"+13129224122",
				"+1242421412",
			],
			"virtual_appointment_sms_type" : "confirmation",
	}
)

await graph_client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').send_virtual_appointment_sms.post(request_body)


```