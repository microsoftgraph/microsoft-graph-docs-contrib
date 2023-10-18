---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = EducationModuleResource(
	resource = EducationResource(
		display_name = "new pdf file patched.pdf",
	),
)

result = await graph_client.education.classes.by_classe_id('educationClass-id').modules.by_module_id('educationModule-id').resources.by_resource_id('educationModuleResource-id').patch(body = request_body)


```