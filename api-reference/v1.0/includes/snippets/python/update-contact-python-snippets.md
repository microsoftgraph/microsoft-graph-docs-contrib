---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Contact()
home_address = PhysicalAddress()
home_address.street = '123 Some street'

home_address.city = 'Seattle'

home_address.state = 'WA'

home_address.postal_code = '98121'


request_body.home_address = home_address
request_body.birthday = DateTime('1974-07-22')




result = await client.me.contacts.by_contact_id('contact-id').patch(request_body = request_body)


```