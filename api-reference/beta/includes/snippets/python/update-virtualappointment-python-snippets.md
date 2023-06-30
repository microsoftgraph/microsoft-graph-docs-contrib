---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = VirtualAppointment()
request_body.@odata_type = '#microsoft.graph.virtualAppointment'

request_body.id = '0c7fda79-ff00-f57f-37e3-28183b6d09b5'

settings = VirtualAppointmentSettings()
settings.@odata_type = 'microsoft.graph.virtualAppointmentSettings'

settings.allow_client_to_join_using_browser = True


request_body.settings = settings
appointment_clients_virtual_appointment_user1 = VirtualAppointmentUser()
appointment_clients_virtual_appointment_user1.@odata_type = 'microsoft.graph.virtualAppointmentUser'

appointment_clients_virtual_appointment_user1.email_address = 'gradya@contoso.com'

appointment_clients_virtual_appointment_user1.display_name = 'Grady Archie'

appointment_clients_virtual_appointment_user1.sms_capable_phone_number = '123-456-7890'


appointmentClientsArray []= appointmentClientsVirtualAppointmentUser1;
request_body.appointmentclients(appointmentClientsArray)


request_body.external_appointment_id = 'AAMkADKnAAA='

request_body.external_appointment_url = 'https://anyschedulingsystem.com/api/appointments/MkADKnAAA='

request_body.appointment_client_join_web_url = 'https://visit.teams.microsoft.com/webrtc-svc/api/route?tid=a796be92-&convId=19:meeting_=True'



request_configuration = VirtualAppointmentRequestBuilder.VirtualAppointmentRequestBuilderPatchRequestConfiguration(
headers = {
	'If-Match' : "W/\"ZfYdV7Meckeip07P//nwjAAADyI7NQ==\"",
}

)


result = await client.me.online_meetings.by_online_meeting_id('onlineMeeting-id').virtual_appointment.patch(request_body = request_body, request_configuration = request_configuration)


```