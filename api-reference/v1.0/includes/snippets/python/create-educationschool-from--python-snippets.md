---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationSchool()
request_body.@odata_type = '#microsoft.graph.educationSchool'

request_body.display_name = 'String'

request_body.description = 'String'

request_body.externalsource(EducationExternalSource.String('educationexternalsource.string'))

request_body.external_source_detail = 'String'

request_body.principal_email = 'String'

request_body.principal_name = 'String'

request_body.external_principal_id = 'String'

request_body.lowest_grade = 'String'

request_body.highest_grade = 'String'

request_body.school_number = 'String'

request_body.external_id = 'String'

request_body.phone = 'String'

request_body.fax = 'String'

created_by = IdentitySet()
created_by.@odata_type = 'microsoft.graph.identitySet'


request_body.created_by = created_by
address = PhysicalAddress()
address.@odata_type = 'microsoft.graph.physicalAddress'


request_body.address = address



result = await client.education.schools.post(request_body = request_body)


```