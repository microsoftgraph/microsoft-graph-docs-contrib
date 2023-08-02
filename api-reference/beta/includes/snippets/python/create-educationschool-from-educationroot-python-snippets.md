---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationSchool()
request_body.display_name = 'Fabrikam High School'

request_body.description = 'Magnate school for the arts. Los Angeles School District'

request_body.externalsource(EducationExternalSource.String('educationexternalsource.string'))

request_body.principal_email = 'AmyR@fabrikam.com'

request_body.principal_name = 'Amy Roebuck'

request_body.external_principal_id = '14007'

request_body.highest_grade = '12'

request_body.lowest_grade = '9'

request_body.school_number = '10002'

address = PhysicalAddress()
address.city = 'Los Angeles'

address.country_or_region = 'United States'

address.postal_code = '98055'

address.state = 'CA'

address.street = '12345 Main St.'


request_body.address = address
request_body.external_id = '10002'

request_body.phone = '+1 (253) 555-0102'




result = await client.education.schools.post(request_body = request_body)


```