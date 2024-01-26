---
description: "Automatically generated file. DO NOT MODIFY"
---

```python



graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationAssignmentSettings(
	submission_animation_disabled = True,
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignment_settings.patch(request_body)


```