---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.education_module_resource import EducationModuleResource
from msgraph_beta.generated.models.education_media_resource import EducationMediaResource
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EducationModuleResource(
	resource = EducationMediaResource(
		odata_type = "#microsoft.graph.educationMediaResource",
		display_name = "media-resource.PNG",
		file_url = "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ3IYW2FOZYQNBELS7N4RRREIMVK",
	),
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').modules.by_education_module_id('educationModule-id').resources.post(request_body)


```