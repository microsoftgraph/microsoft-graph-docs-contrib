---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.education_grading_scheme import EducationGradingScheme
from msgraph_beta.generated.models.education_grading_scheme_grade import EducationGradingSchemeGrade
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EducationGradingScheme(
	display_name = "PassFailScheme",
	grades = [
		EducationGradingSchemeGrade(
			display_name = "Pass",
			min_percentage = 70,
			default_percentage = 90,
		),
		EducationGradingSchemeGrade(
			display_name = "Fail",
			min_percentage = 0,
			default_percentage = 50,
		),
	],
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignment_settings.grading_schemes.post(request_body)


```