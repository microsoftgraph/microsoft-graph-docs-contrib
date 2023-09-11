---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = EducationModule(
	display_name = "New_Module5 updated",
	description = "updated for description",
)

result = await graph_client.education.classes.by_classe_id('educationClass-id').modules.by_module_id('educationModule-id').patch(body = request_body)


```