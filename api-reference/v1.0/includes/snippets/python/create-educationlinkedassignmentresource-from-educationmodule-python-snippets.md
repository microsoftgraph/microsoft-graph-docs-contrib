---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.education_module_resource import EducationModuleResource
from msgraph.generated.models.education_linked_assignment_resource import EducationLinkedAssignmentResource

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationModuleResource(
	resource = EducationLinkedAssignmentResource(
		odata_type = "#microsoft.graph.educationLinkedAssignmentResource",
		display_name = "2024-01-19T17_54_38_711Z",
		url = "https://graph.microsoft.com/v1.0/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/b6a1d277-fed7-4345-940e-3f2ce13eb737",
	),
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').modules.by_education_module_id('educationModule-id').resources.post(request_body)


```