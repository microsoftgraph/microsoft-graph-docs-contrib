---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = BookingBusiness()
request_body.display_name = 'Fourth Coffee'

address = PhysicalAddress()
address.street = '4567 Main Street'

address.city = 'Buffalo'

address.state = 'NY'

address.country_or_region = 'USA'

address.postal_code = '98052'

additional_data = [
'post_office_box' => 'P.O. Box 123', 
];
address.additional_data(additional_data)



request_body.address = address
request_body.phone = '206-555-0100'

request_body.email = 'manager@fourthcoffee.com'

request_body.web_site_url = 'https://www.fourthcoffee.com'

request_body.default_currency_iso = 'USD'




result = await client.solutions.booking_businesses.post(request_body = request_body)


```