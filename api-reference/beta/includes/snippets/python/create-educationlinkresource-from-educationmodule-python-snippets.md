---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = EducationModuleResource(
	resource = EducationLinkResource(
		odata_type = "#microsoft.graph.educationLinkResource",
		display_name = "Bing site",
		link = "https://www.bing.com",
	),
)

result = await graph_client.education.classes.by_classe_id('educationClass-id').modules.by_module_id('educationModule-id').resources.post(body = request_body)


```