---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.education_module import EducationModule

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationModule(
	display_name = "Module 2",
	description = "Description for Module 2",
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').modules.post(request_body)


```