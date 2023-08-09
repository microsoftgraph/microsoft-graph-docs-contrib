---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = Contact()
email_addresses_typed_email_address1 = TypedEmailAddress()
email_addresses_typed_email_address1.type(EmailType.Personal('emailtype.personal'))

email_addresses_typed_email_address1.name = 'Pavel Bansky'

email_addresses_typed_email_address1.address = 'pavelb@adatum.onmicrosoft.com'


emailAddressesArray []= emailAddressesTypedEmailAddress1;
email_addresses_typed_email_address2 = TypedEmailAddress()
email_addresses_typed_email_address2.address = 'pavelb@fabrikam.onmicrosoft.com'

email_addresses_typed_email_address2.name = 'Pavel Bansky'

email_addresses_typed_email_address2.type(EmailType.Other('emailtype.other'))

email_addresses_typed_email_address2.other_label = 'Volunteer work'


emailAddressesArray []= emailAddressesTypedEmailAddress2;
request_body.emailaddresses(emailAddressesArray)





result = await client.me.contacts.by_contact_id('contact-id').patch(request_body = request_body)


```