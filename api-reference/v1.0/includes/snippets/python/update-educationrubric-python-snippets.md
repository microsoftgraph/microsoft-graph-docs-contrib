---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationRubric()
request_body.display_name = 'Example Credit Rubric after display name patch'




result = await client.education.me.rubrics.by_rubric_id('educationRubric-id').patch(request_body = request_body)


```