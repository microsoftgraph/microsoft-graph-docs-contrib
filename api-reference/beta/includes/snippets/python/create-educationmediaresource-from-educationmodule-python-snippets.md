---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = EducationModuleResource(
	resource = EducationMediaResource(
		odata_type = "#microsoft.graph.educationMediaResource",
		display_name = "media-resource.PNG",
		file_url = "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ3IYW2FOZYQNBELS7N4RRREIMVK",
	),
)

result = await graph_client.education.classes.by_classe_id('educationClass-id').modules.by_module_id('educationModule-id').resources.post(body = request_body)


```