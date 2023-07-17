---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationSchool()
request_body.display_name = 'Fabrikam Arts High School'

request_body.description = 'Magnate school for the arts. Los Angeles School District'




result = await client.education.schools.by_school_id('educationSchool-id').patch(request_body = request_body)


```