---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = SendVirtualAppointmentSmsPostRequestBody(
	phone_numbers = [
		"+13129224122",
		"+1242421412",
	],
	additional_data = {
			"virtual_appointment_sms_type" : "confirmation",
	}
)

await graph_client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').send_virtual_appointment_sms.post(request_body)


```