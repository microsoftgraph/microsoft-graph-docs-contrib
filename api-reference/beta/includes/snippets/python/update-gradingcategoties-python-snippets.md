---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.education_grading_category import EducationGradingCategory

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationGradingCategory(
	display_name = "Quiz-1",
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignment_settings.grading_categories.by_education_grading_category_id('educationGradingCategory-id').patch(request_body)


```