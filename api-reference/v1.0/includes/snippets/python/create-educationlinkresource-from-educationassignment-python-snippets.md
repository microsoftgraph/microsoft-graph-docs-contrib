---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationAssignmentResource()
request_body.distribute_for_student_work = False

resource = EducationLinkResource()
resource.display_name = 'Where the Wonders of Learning Never Cease | Wonderopolis'

resource.link = 'https://wonderopolis.org/'

resource.@odata_type = '#microsoft.graph.educationLinkResource'

additional_data = [
'thumbnail_preview_url' => 		null,
];
resource.additional_data(additional_data)



request_body.resource = resource



result = await client.education.classes.by_classe_id('educationClass-id').assignments.by_assignment_id('educationAssignment-id').resources.post(request_body = request_body)


```