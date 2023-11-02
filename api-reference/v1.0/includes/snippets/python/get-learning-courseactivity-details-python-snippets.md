---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)


result = await graph_client.users.by_user_id('user-id').employee_experience.learning_course_activities.by_learning_course_activity_id('learningCourseActivity-id').get()


```