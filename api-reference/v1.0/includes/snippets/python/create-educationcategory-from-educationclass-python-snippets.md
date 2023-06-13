---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationCategory()
request_body.display_name = 'Quizzes'




result = await client.education.classes.by_classe_id('educationClass-id').assignment_categories.post(request_body = request_body)


```