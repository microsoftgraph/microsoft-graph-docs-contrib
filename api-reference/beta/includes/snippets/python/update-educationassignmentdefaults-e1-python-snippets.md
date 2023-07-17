---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationAssignmentDefaults()
request_body.addedstudentaction(EducationAddedStudentAction.AssignIfOpen('educationaddedstudentaction.assignifopen'))

request_body.addtocalendaraction(EducationAddToCalendarOptions.StudentsAndTeamOwners('educationaddtocalendaroptions.studentsandteamowners'))

request_body.notification_channel_url = 'https://graph.microsoft.com/beta/teams(\'id\')/channels(\'id\')'




result = await client.education.classes.by_classe_id('educationClass-id').assignment_defaults.patch(request_body = request_body)


```