---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationUser()
request_body.display_name = 'Rogelio Cazares'

request_body.given_name = 'Rogelio'

request_body.middle_name = 'Fernando'

request_body.surname = 'Cazares'




result = await client.education.users.by_user_id('educationUser-id').patch(request_body = request_body)


```