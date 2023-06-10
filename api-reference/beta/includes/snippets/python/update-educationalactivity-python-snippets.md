---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationalActivity()
institution = InstitutionData()
institutionlocation = PhysicalAddress()
institutionlocation.type(PhysicalAddressType.Business('physicaladdresstype.business'))

institutionlocation.postOfficeBox=null

institutionlocation.street = '12000 E Prospect Rd'

institutionlocation.city = 'Fort Collins'

institutionlocation.state = 'Colorado'

institutionlocation.country_or_region = 'USA'

institutionlocation.postal_code = '80525'


institution.location = institutionlocation

request_body.institution = institution



result = await client.me.profile.educational_activities.by_educational_activitie_id('educationalActivity-id').patch(request_body = request_body)


```