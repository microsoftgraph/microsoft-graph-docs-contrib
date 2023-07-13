---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = CancelPostRequestBody()
request_body.cancellation_message = 'Your appointment has been successfully cancelled. Please call us again.'




await client.solutions.booking_businesses.by_booking_businesse_id('bookingBusiness-id').appointments.by_appointment_id('bookingAppointment-id').cancel.post(request_body = request_body)


```