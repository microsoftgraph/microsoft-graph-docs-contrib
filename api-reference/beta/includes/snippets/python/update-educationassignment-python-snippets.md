---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.education_assignment import EducationAssignment
from msgraph_beta.generated.models.education_item_body import EducationItemBody
from msgraph_beta.generated.models.body_type import BodyType
from msgraph_beta.generated.models.education_added_student_action import EducationAddedStudentAction
from msgraph_beta.generated.models.education_add_to_calendar_options import EducationAddToCalendarOptions
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EducationAssignment(
	display_name = "Reading and review test 09.03 #5",
	instructions = EducationItemBody(
		content_type = BodyType.Text,
		content = "Read chapter 5 and write your review",
	),
	due_date_time = "2021-09-10T00:00:00Z",
	added_student_action = EducationAddedStudentAction.None,
	language_tag = "pt-BR",
	add_to_calendar_action = EducationAddToCalendarOptions.StudentsAndPublisher,
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.by_education_assignment_id('educationAssignment-id').patch(request_body)


```