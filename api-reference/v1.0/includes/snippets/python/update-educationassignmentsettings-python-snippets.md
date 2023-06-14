---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationAssignmentSettings()
request_body.submission_animation_disabled = True




result = await client.education.classes.by_classe_id('educationClass-id').assignment_settings.patch(request_body = request_body)


```