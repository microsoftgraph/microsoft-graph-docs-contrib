---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.education_grading_scheme import EducationGradingScheme
from msgraph.generated.models.education_grading_scheme_grade import EducationGradingSchemeGrade

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationGradingScheme(
	display_name = "New name 02",
	grades = [
		EducationGradingSchemeGrade(
			display_name = "Only grade",
			min_percentage = 0,
		),
	],
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignment_settings.grading_schemes.post(request_body)


```