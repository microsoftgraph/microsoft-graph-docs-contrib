---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = EducationGradingCategory(
	display_name = "Quiz-1",
)

result = await graph_client.education.classes.by_classe_id('educationClass-id').assignment_settings.grading_categories.by_grading_categorie_id('educationGradingCategory-id').patch(body = request_body)


```