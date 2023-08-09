---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Contact()
request_body.given_name = 'Pavel'

request_body.surname = 'Bansky'

email_addresses_typed_email_address1 = TypedEmailAddress()
email_addresses_typed_email_address1.address = 'pavelb@contoso.onmicrosoft.com'

email_addresses_typed_email_address1.name = 'Pavel Bansky'

email_addresses_typed_email_address1.type(EmailType.Personal('emailtype.personal'))


emailAddressesArray []= emailAddressesTypedEmailAddress1;
email_addresses_typed_email_address2 = TypedEmailAddress()
email_addresses_typed_email_address2.address = 'pavelb@fabrikam.onmicrosoft.com'

email_addresses_typed_email_address2.name = 'Pavel Bansky'

email_addresses_typed_email_address2.type(EmailType.Other('emailtype.other'))

email_addresses_typed_email_address2.other_label = 'Volunteer work'


emailAddressesArray []= emailAddressesTypedEmailAddress2;
request_body.emailaddresses(emailAddressesArray)


phones_phone1 = Phone()
phones_phone1.number = '+1 732 555 0102'

phones_phone1.type(PhoneType.Business('phonetype.business'))


phonesArray []= phonesPhone1;
request_body.phones(phonesArray)





result = await client.me.contacts.post(request_body = request_body)


```