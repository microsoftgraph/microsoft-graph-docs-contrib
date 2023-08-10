---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationClass()
request_body.@odata_type = '#microsoft.graph.educationClass'

request_body.display_name = 'String'

request_body.mail_nickname = 'String'

request_body.description = 'String'

created_by = IdentitySet()
created_by.@odata_type = 'microsoft.graph.identitySet'


request_body.created_by = created_by
request_body.class_code = 'String'

request_body.external_name = 'String'

request_body.external_id = 'String'

request_body.externalsource(EducationExternalSource.String('educationexternalsource.string'))

request_body.external_source_detail = 'String'

request_body.grade = 'String'

term = EducationTerm()
term.@odata_type = 'microsoft.graph.educationTerm'


request_body.term = term



result = await client.education.classes.post(request_body = request_body)


```