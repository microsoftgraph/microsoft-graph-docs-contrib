---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationAssignmentDefaults()
request_body.addedstudentaction(EducationAddedStudentAction.AssignIfOpen('educationaddedstudentaction.assignifopen'))

request_body.notification_channel_url = 'https://graph.microsoft.com/beta/teams(\'acdefc6b-2dc6-4e71-b1e9-6d9810ab1793\')/channels(\'3da03fc4-8eac-4459-84fb-1422dc01f65e\')'




result = await client.education.classes.by_classe_id('educationClass-id').assignment_defaults.patch(request_body = request_body)


```