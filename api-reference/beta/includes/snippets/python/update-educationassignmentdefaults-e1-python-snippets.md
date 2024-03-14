---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.education_assignment_defaults import EducationAssignmentDefaults

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationAssignmentDefaults(
	added_student_action = EducationAddedStudentAction.AssignIfOpen,
	add_to_calendar_action = EducationAddToCalendarOptions.StudentsAndTeamOwners,
	notification_channel_url = "https://graph.microsoft.com/beta/teams('id')/channels('id')",
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignment_defaults.patch(request_body)


```