---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

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

result = await graph_client.education.classes.by_classe_id('educationClass-id').assignments.by_assignment_id('educationAssignment-id').resources.post(body = request_body)


```