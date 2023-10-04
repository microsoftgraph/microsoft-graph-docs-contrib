---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = EducationAssignmentSettings(
	grading_categories = [
		EducationGradingCategory(
			display_name = "Lab",
			percentage_weight = 10,
		),
		EducationGradingCategory(
			display_name = "Homework",
			percentage_weight = 80,
		),
		EducationGradingCategory(
			display_name = "Test",
			percentage_weight = 10,
		),
	]
)

result = await graph_client.education.classes.by_classe_id('educationClass-id').assignment_settings.patch(body = request_body)


```