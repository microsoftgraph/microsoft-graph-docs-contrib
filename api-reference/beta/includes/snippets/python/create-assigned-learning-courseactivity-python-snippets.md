---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.learning_assignment import LearningAssignment
from msgraph_beta.generated.models.assignment_type import AssignmentType
from msgraph_beta.generated.models.date_time_time_zone import DateTimeTimeZone
from msgraph_beta.generated.models.item_body import ItemBody
from msgraph_beta.generated.models.body_type import BodyType
from msgraph_beta.generated.models.course_status import CourseStatus
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = LearningAssignment(
	odata_type = "#microsoft.graph.learningAssignment",
	assigned_date_time = "2021-05-11T22:57:17+00:00",
	assignment_type = AssignmentType.Required,
	assigner_user_id = "cea1684d-57dc-438d-a9d1-e666ec1a7f3d",
	completed_date_time = None,
	completion_percentage = 20,
	due_date_time = DateTimeTimeZone(
		date_time = "2022-09-22T16:05:00.0000000",
		time_zone = "UTC",
	),
	external_course_activity_id = "12a2228a-e020-11ec-9d64-0242ac120002",
	learning_content_id = "57baf9dc-e020-11ec-9d64-0242ac120002",
	learning_provider_id = "01e8f81b-3060-4dec-acf0-0389665a0a38",
	learner_user_id = "7ba2228a-e020-11ec-9d64-0242ac120002",
	notes = ItemBody(
		content_type = BodyType.Text,
		content = "required assignment added for user",
	),
	status = CourseStatus.NotStarted,
)

result = await graph_client.employee_experience.learning_providers.by_learning_provider_id('learningProvider-id').learning_course_activities.post(request_body)


```