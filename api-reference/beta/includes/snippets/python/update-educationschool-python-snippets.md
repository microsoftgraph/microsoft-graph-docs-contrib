---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationSchool(
	display_name = "Fabrikam Arts High School",
	description = "Magnate school for the arts. Los Angeles School District",
)

result = await graph_client.education.schools.by_education_school_id('educationSchool-id').patch(request_body)


```