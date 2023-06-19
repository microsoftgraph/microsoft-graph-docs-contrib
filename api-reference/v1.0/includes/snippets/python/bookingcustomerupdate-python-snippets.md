---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = BookingCustomerBase()
request_body.@odata_type = '#microsoft.graph.bookingCustomer'

additional_data = [
'display_name' => 'Adele', 
'email_address' => 'adele@relecloud.com', 
];
request_body.additional_data(additional_data)





result = await client.solutions.booking_businesses.by_booking_businesse_id('bookingBusiness-id').customers.by_customer_id('bookingCustomerBase-id').patch(request_body = request_body)


```