---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = EducationModule(
	display_name = "Module 2",
	description = "Description for Module 2",
)

result = await graph_client.education.classes.by_classe_id('educationClass-id').modules.post(body = request_body)


```