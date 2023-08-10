---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PersonCertification()
request_body.issuing_authority = 'International Academy of Marketing Excellence'

request_body.issuing_company = 'International Academy of Marketing Excellence'




result = await client.users.by_user_id('user-id').profile.certifications.by_certification_id('personCertification-id').patch(request_body = request_body)


```