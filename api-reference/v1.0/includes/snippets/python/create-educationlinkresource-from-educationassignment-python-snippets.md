---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.education_assignment_resource import EducationAssignmentResource
from msgraph.generated.models.education_link_resource import EducationLinkResource

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationAssignmentResource(
	distribute_for_student_work = False,
	resource = EducationLinkResource(
		display_name = "Where the Wonders of Learning Never Cease | Wonderopolis",
		link = "https://wonderopolis.org/",
		odata_type = "#microsoft.graph.educationLinkResource",
		additional_data = {
				"thumbnail_preview_url" : None,
		}
	),
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.by_education_assignment_id('educationAssignment-id').resources.post(request_body)


```