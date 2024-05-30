---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.solutions.bookingbusinesses.item.appointments.item.cancel.cancel_post_request_body import CancelPostRequestBody

graph_client = GraphServiceClient(credentials, scopes)

request_body = CancelPostRequestBody(
	cancellation_message = "Your appointment has been successfully cancelled. Please call us again.",
)

await graph_client.solutions.booking_businesses.by_booking_business_id('bookingBusiness-id').appointments.by_booking_appointment_id('bookingAppointment-id').cancel.post(request_body)


```