---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = BookingCustomer()
request_body.@odata_type = '#microsoft.graph.bookingCustomer'

request_body.display_name = 'Adele'

request_body.email_address = 'adele@relecloud.com'




result = await client.solutions.booking_businesses.by_booking_businesse_id('bookingBusiness-id').customers.by_customer_id('bookingCustomerBase-id').patch(request_body = request_body)


```