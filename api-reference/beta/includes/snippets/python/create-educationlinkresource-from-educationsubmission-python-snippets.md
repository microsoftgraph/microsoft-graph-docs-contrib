---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationSubmissionResource()
resource = EducationLinkResource()
resource.display_name = 'Wikipedia'

resource.link = 'https://en.wikipedia.org/wiki/Main_Page'

resource.@odata_type = '#microsoft.graph.educationLinkResource'


request_body.resource = resource



result = await client.education.classes.by_classe_id('educationClass-id').assignments.by_assignment_id('educationAssignment-id').submissions.by_submission_id('educationSubmission-id').resources.post(request_body = request_body)


```