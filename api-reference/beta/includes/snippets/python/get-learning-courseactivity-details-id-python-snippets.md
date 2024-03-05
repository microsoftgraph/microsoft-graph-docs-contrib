---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.employee_experience.learning_course_activities.by_learning_course_activity_id('learningCourseActivity-id').get()


```