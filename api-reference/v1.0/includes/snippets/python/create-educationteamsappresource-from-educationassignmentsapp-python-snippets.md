---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationAssignmentResource()
request_body.distribute_for_student_work = False

resource = EducationTeamsAppResource()
resource.display_name = 'Template - My Story'

resource.app_id = '6fbeb90c-3d55-4bd5-82c4-bfe824be4300'

resource.app_icon_web_url = 'https://statics.teams.cdn.office.net/evergreen-assets/ThirdPartyApps/6fbeb90c-3d55-4bd5-82c4-bfe824be4300_largeImage.png?v=2.0.2'

resource.teams_embedded_content_url = 'https://app.api.edu.buncee.com/player/C7B0866C9B7E485EAE21AE14DBC3FD08?embed=1&render_slide_panel=1'

resource.web_url = 'https://app.edu.buncee.com/buncee/C7B0866C9B7E485EAE21AE14DBC3FD08'

resource.@odata_type = '#microsoft.graph.educationTeamsAppResource'


request_body.resource = resource



result = await client.education.classes.by_classe_id('educationClass-id').assignments.by_assignment_id('educationAssignment-id').resources.post(request_body = request_body)


```