---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = EducationCategory(
	display_name = "Quizzes",
)

result = await graph_client.education.classes.by_classe_id('educationClass-id').assignment_categories.post(body = request_body)


```