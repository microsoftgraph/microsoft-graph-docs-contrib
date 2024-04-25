---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.learning_self_initiated_course import LearningSelfInitiatedCourse

graph_client = GraphServiceClient(credentials, scopes)

request_body = LearningSelfInitiatedCourse(
	odata_type = "#microsoft.graph.learningSelfInitiatedCourse",
	completed_date_time = None,
	completion_percentage = 20,
	external_course_activity_id = "12a2228a-e020-11ec-9d64-0242ac120002",
	learning_content_id = "57baf9dc-e020-11ec-9d64-0242ac120002",
	learner_user_id = "7ba2228a-e020-11ec-9d64-0242ac120002",
	started_date_time = "2021-05-21T22:57:17+00:00",
	status = CourseStatus.InProgress,
)

result = await graph_client.employee_experience.learning_providers.by_learning_provider_id('learningProvider-id').learning_course_activities.post(request_body)


```