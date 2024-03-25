---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.education_assignment_settings import EducationAssignmentSettings
from msgraph.generated.models.education_grading_scheme import EducationGradingScheme
from msgraph.generated.models.education_grading_scheme_grade import EducationGradingSchemeGrade

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationAssignmentSettings(
	grading_schemes = [
		EducationGradingScheme(
			display_name = "Pass/fail",
			grades = [
				EducationGradingSchemeGrade(
					display_name = "Pass",
					min_percentage = 60,
					default_percentage = 100,
				),
				EducationGradingSchemeGrade(
					display_name = "Fail",
					min_percentage = 0,
					default_percentage = 0,
				),
			],
		),
		EducationGradingScheme(
			display_name = "Letters",
			grades = [
				EducationGradingSchemeGrade(
					display_name = "A",
					min_percentage = 90,
				),
				EducationGradingSchemeGrade(
					display_name = "B",
					min_percentage = 80,
				),
				EducationGradingSchemeGrade(
					display_name = "C",
					min_percentage = 70,
				),
				EducationGradingSchemeGrade(
					display_name = "D",
					min_percentage = 60,
				),
				EducationGradingSchemeGrade(
					display_name = "F",
					min_percentage = 0,
				),
			],
		),
	],
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignment_settings.patch(request_body)


```