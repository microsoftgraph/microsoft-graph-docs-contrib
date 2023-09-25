---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = BookingCustomer(
	odata_type = "#microsoft.graph.bookingCustomer",
	display_name = "Adele",
	email_address = "adele@relecloud.com",
)

result = await graph_client.solutions.booking_businesses.by_booking_businesse_id('bookingBusiness-id').customers.by_customer_id('bookingCustomerBase-id').patch(body = request_body)


```