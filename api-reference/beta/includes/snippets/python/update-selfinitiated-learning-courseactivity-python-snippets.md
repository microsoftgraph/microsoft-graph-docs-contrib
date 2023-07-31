---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = LearningSelfInitiatedCourse()
request_body.@odata_type = '#microsoft.graph.learningSelfInitiatedCourse'

request_body.completedDateTime=null

request_body.CompletionPercentage = 30

request_body.external_course_activity_id = '12a2228a-e020-11ec-9d64-0242ac120002'

request_body.learning_content_id = '57baf9dc-e020-11ec-9d64-0242ac120002'

request_body.learning_provider_id = '01e8f81b-3060-4dec-acf0-0389665a0a38'

request_body.startedDateTime = DateTime('2021-05-11T22:57:17+00:00')

request_body.status(CourseStatus.InProgress('coursestatus.inprogress'))




result = await client.employee_experience.learning_providers.by_learning_provider_id('learningProvider-id').learning_course_activities.by_learning_course_activitie_id('learningCourseActivity-id').patch(request_body = request_body)


```