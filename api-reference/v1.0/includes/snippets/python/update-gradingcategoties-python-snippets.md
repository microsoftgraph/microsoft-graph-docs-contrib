---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.education_grading_category import EducationGradingCategory
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EducationGradingCategory(
	display_name = "Test updated",
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignment_settings.grading_categories.by_education_grading_category_id('educationGradingCategory-id').patch(request_body)


```