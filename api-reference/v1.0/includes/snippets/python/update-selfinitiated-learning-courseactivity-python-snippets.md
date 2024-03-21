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
	completion_percentage = 30,
	externalcourse_activity_id = "12a2228a-e020-11ec-9d64-0242ac120002",
	learning_content_id = "57baf9dc-e020-11ec-9d64-0242ac120002",
	learning_provider_id = "01e8f81b-3060-4dec-acf0-0389665a0a38",
	started_date_time = "2021-05-11T22:57:17+00:00",
	status = CourseStatus.InProgress,
)

result = await graph_client.employee_experience.learning_providers.by_learning_provider_id('learningProvider-id').learning_course_activities.by_learning_course_activity_id('learningCourseActivity-id').patch(request_body)


```