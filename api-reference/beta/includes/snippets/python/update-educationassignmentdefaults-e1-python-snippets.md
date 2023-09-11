---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = EducationAssignmentDefaults(
	added_student_action = EducationAddedStudentAction.AssignIfOpen,
	add_to_calendar_action = EducationAddToCalendarOptions.StudentsAndTeamOwners,
	notification_channel_url = "https://graph.microsoft.com/beta/teams('id')/channels('id')",
)

result = await graph_client.education.classes.by_classe_id('educationClass-id').assignment_defaults.patch(body = request_body)


```