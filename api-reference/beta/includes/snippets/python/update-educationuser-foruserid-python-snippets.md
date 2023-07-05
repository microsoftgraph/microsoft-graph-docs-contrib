---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationUser()
related_contacts_related_contact1 = RelatedContact()
related_contacts_related_contact1.display_name = 'Father Time'

related_contacts_related_contact1.email_address = 'father@time.com'

related_contacts_related_contact1.mobile_phone = '4251231234'

related_contacts_related_contact1.relationship(ContactRelationship.Guardian('contactrelationship.guardian'))

related_contacts_related_contact1.access_consent = True


relatedContactsArray []= relatedContactsRelatedContact1;
related_contacts_related_contact2 = RelatedContact()
related_contacts_related_contact2.display_name = 'Mother Nature'

related_contacts_related_contact2.email_address = 'mother@nature.co.uk'

related_contacts_related_contact2.mobile_phone = '3251231234'

related_contacts_related_contact2.relationship(ContactRelationship.Parent('contactrelationship.parent'))

related_contacts_related_contact2.access_consent = True


relatedContactsArray []= relatedContactsRelatedContact2;
request_body.relatedcontacts(relatedContactsArray)





result = await client.education.users.by_user_id('educationUser-id').patch(request_body = request_body)


```