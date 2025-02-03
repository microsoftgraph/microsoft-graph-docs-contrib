---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.education_assignment_resource import EducationAssignmentResource
from msgraph_beta.generated.models.education_teams_app_resource import EducationTeamsAppResource
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EducationAssignmentResource(
	distribute_for_student_work = False,
	resource = EducationTeamsAppResource(
		display_name = "Template - My Story",
		app_id = "6fbeb90c-3d55-4bd5-82c4-bfe824be4300",
		app_icon_web_url = "https://statics.teams.cdn.office.net/evergreen-assets/ThirdPartyApps/6fbeb90c-3d55-4bd5-82c4-bfe824be4300_largeImage.png?v=2.0.2",
		teams_embedded_content_url = "https://app.api.edu.buncee.com/player/C7B0866C9B7E485EAE21AE14DBC3FD08?embed=1&render_slide_panel=1",
		web_url = "https://app.edu.buncee.com/buncee/C7B0866C9B7E485EAE21AE14DBC3FD08",
		odata_type = "#microsoft.graph.educationTeamsAppResource",
	),
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.by_education_assignment_id('educationAssignment-id').resources.post(request_body)


```