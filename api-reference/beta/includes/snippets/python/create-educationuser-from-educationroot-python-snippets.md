---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationUser()
request_body.display_name = 'Dion Matheson'

request_body.given_name = 'Dion'

request_body.middleName=null

request_body.surname = 'Matheson'

request_body.mail = 'DionM@contoso.com'

request_body.mobile_phone = '+1 (253) 555-0101'

created_by = IdentitySet()
created_byuser = Identity()
created_byuser.display_name = 'Susana Rocha'

created_byuser.id = '14012'


created_by.user = created_byuser

request_body.created_by = created_by
request_body.externalsource(EducationExternalSource.Sis('educationexternalsource.sis'))

mailing_address = PhysicalAddress()
mailing_address.city = 'Los Angeles'

mailing_address.country_or_region = 'United States'

mailing_address.postal_code = '98055'

mailing_address.state = 'CA'

mailing_address.street = '12345 Main St.'


request_body.mailing_address = mailing_address
request_body.primaryrole(EducationUserRole.Student('educationuserrole.student'))

residence_address = PhysicalAddress()
residence_address.city = 'Los Angeles'

residence_address.country_or_region = 'United States'

residence_address.postal_code = '98055'

residence_address.state = 'CA'

residence_address.street = '12345 Main St.'


request_body.residence_address = residence_address



result = await client.education.users.post(request_body = request_body)


```