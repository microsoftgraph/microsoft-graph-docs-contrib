---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = EducationClass(
	description = "History - World History 1",
	display_name = "World History Level 1",
)

result = await graph_client.education.classes.by_classe_id('educationClass-id').patch(body = request_body)


```