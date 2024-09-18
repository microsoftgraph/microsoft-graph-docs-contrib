---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.education_class import EducationClass

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationClass(
	description = "History - World History 1",
	display_name = "World History Level 1",
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').patch(request_body)


```