---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.education_module_resource import EducationModuleResource
from msgraph.generated.models.education_file_resource import EducationFileResource

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationModuleResource(
	resource = EducationFileResource(
		odata_type = "#microsoft.graph.educationFileResource",
		display_name = "csv_file.csv",
		additional_data = {
				"file" : {
						"odataid" : "https://graph.microsoft.com/v1.0/drives/b!-Ik2sRPLDEWy_bR8l75jfeDcpXQcRKVOmcml10NQLQ1F2UVvTgEnTKi0GO59dbCL/items/01VANVJQ7A2QVVORGJNVBIC4LLM3XQ6UTS",
				},
		}
	),
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').modules.by_education_module_id('educationModule-id').resources.post(request_body)


```