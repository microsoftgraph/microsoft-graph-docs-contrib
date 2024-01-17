---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = BookingCustomer(
	display_name = "Adele",
	email_address = "adele@relecloud.com",
)

result = await graph_client.booking_businesses.by_booking_business_id('bookingBusiness-id').customers.by_booking_customer_id('bookingCustomer-id').patch(request_body)


```