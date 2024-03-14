---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.employee_experience.learning_providers.by_learning_provider_id('learningProvider-id').learning_course_activities_with_externalcourse_activity_id("{externalcourseActivityId}").get()


```