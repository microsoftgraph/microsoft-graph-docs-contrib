---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Contact()
request_body.given_name = 'Pavel'

request_body.surname = 'Bansky'

email_addresses_email_address1 = EmailAddress()
email_addresses_email_address1.address = 'pavelb@fabrikam.onmicrosoft.com'

email_addresses_email_address1.name = 'Pavel Bansky'


emailAddressesArray []= emailAddressesEmailAddress1;
request_body.emailaddresses(emailAddressesArray)


request_body.BusinessPhones(['+1 732 555 0102', ])




result = await client.me.contacts.post(request_body = request_body)


```