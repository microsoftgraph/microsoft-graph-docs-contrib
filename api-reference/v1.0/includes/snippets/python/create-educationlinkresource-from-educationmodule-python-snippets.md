---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.education_module_resource import EducationModuleResource
from msgraph.generated.models.education_link_resource import EducationLinkResource

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationModuleResource(
	resource = EducationLinkResource(
		odata_type = "#microsoft.graph.educationLinkResource",
		display_name = "Bing site",
		link = "https://www.bing.com",
	),
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').modules.by_education_module_id('educationModule-id').resources.post(request_body)


```