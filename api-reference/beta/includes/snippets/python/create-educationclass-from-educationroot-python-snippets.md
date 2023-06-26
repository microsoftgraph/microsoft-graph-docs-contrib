---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationClass()
request_body.description = 'Health Level 1'

request_body.class_code = 'Health 501'

request_body.display_name = 'Health 1'

request_body.external_id = '11019'

request_body.external_name = 'Health Level 1'

request_body.externalsource(EducationExternalSource.Sis('educationexternalsource.sis'))

request_body.mail_nickname = 'fineartschool.net'




result = await client.education.classes.post(request_body = request_body)


```