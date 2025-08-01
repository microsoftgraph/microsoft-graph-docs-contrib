---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.education_assignment_defaults import EducationAssignmentDefaults
from msgraph.generated.models.education_added_student_action import EducationAddedStudentAction
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EducationAssignmentDefaults(
	added_student_action = EducationAddedStudentAction.AssignIfOpen,
	notification_channel_url = "https://graph.microsoft.com/beta/teams('acdefc6b-2dc6-4e71-b1e9-6d9810ab1793')/channels('3da03fc4-8eac-4459-84fb-1422dc01f65e')",
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignment_defaults.patch(request_body)


```