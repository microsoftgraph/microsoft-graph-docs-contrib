---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.education_assignment_settings import EducationAssignmentSettings
from msgraph_beta.generated.models.education_grading_category import EducationGradingCategory
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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
	],
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignment_settings.patch(request_body)


```