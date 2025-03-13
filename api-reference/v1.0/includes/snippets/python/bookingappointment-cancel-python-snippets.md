---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.solutions.bookingbusinesses.item.appointments.item.cancel.cancel_post_request_body import CancelPostRequestBody
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = CancelPostRequestBody(
	cancellation_message = "Your appointment has been successfully cancelled. Please call us again.",
)

await graph_client.solutions.booking_businesses.by_booking_business_id('bookingBusiness-id').appointments.by_booking_appointment_id('bookingAppointment-id').cancel.post(request_body)


```