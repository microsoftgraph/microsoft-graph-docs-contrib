---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.education_grading_scheme import EducationGradingScheme
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EducationGradingScheme(
	display_name = "New GradingScheme name",
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignment_settings.grading_schemes.by_education_grading_scheme_id('educationGradingScheme-id').patch(request_body)


```