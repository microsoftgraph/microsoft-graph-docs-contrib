---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = EducationModuleResource(
	resource = EducationPowerPointResource(
		odata_type = "#microsoft.graph.educationPowerPointResource",
		display_name = "ppt_test.pptx",
		file_url = "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQZEG2AM23OQ5NA2LFTHERBABBK6",
	),
)

result = await graph_client.education.classes.by_classe_id('educationClass-id').modules.by_module_id('educationModule-id').resources.post(body = request_body)


```