---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.education_module import EducationModule

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationModule(
	display_name = "New_Module5 updated",
	description = "updated for description",
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').modules.by_education_module_id('educationModule-id').patch(request_body)


```