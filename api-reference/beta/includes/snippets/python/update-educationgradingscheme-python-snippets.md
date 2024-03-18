---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.education_grading_scheme import EducationGradingScheme

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationGradingScheme(
	display_name = "New GradingScheme name",
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignment_settings.grading_schemes.by_education_grading_scheme_id('educationGradingScheme-id').patch(request_body)


```