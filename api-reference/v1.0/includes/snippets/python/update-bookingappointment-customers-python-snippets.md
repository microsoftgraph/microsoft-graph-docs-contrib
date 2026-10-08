---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.booking_appointment import BookingAppointment
from msgraph.generated.models.booking_customer_information_base import BookingCustomerInformationBase
from msgraph.generated.models.booking_customer_information import BookingCustomerInformation
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = BookingAppointment(
	odata_type = "#microsoft.graph.bookingAppointment",
	customers = [
		BookingCustomerInformation(
			odata_type = "#microsoft.graph.bookingCustomerInformation",
			customer_id = "cd56bb19-c348-42c6-af5c-09818c87fb8c",
			name = "John Doe",
			email_address = "john.doe@example.com",
			phone = "313-555-5555",
		),
		BookingCustomerInformation(
			odata_type = "#microsoft.graph.bookingCustomerInformation",
			customer_id = "72f148fa-9a86-4c59-b277-f5089d9ea0e7",
			name = "Jane Smith",
			email_address = "jane.smith@example.com",
			phone = "248-555-5678",
		),
	],
)

result = await graph_client.solutions.booking_businesses.by_booking_business_id('bookingBusiness-id').appointments.by_booking_appointment_id('bookingAppointment-id').patch(request_body)


```