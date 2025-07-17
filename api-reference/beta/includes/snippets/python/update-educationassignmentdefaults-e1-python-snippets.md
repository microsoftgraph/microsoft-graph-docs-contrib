---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.education_assignment_defaults import EducationAssignmentDefaults
from msgraph_beta.generated.models.education_added_student_action import EducationAddedStudentAction
from msgraph_beta.generated.models.education_add_to_calendar_options import EducationAddToCalendarOptions
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EducationAssignmentDefaults(
	added_student_action = EducationAddedStudentAction.AssignIfOpen,
	add_to_calendar_action = EducationAddToCalendarOptions.StudentsAndTeamOwners,
	notification_channel_url = "https://graph.microsoft.com/beta/teams('id')/channels('id')",
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignment_defaults.patch(request_body)


```