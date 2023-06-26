---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationGradingCategory()
request_body.display_name = 'Quiz-1'




result = await client.education.classes.by_classe_id('educationClass-id').assignment_settings.grading_categories.by_grading_categorie_id('educationGradingCategory-id').patch(request_body = request_body)


```