---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = LearningAssignment()
request_body.@odata_type = '#microsoft.graph.learningAssignment'

request_body.assignedDateTime = DateTime('2021-05-11T22:57:17+00:00')

request_body.assignmenttype(AssignmentType.Required('assignmenttype.required'))

request_body.assigner_user_id = 'cea1684d-57dc-438d-a9d1-e666ec1a7f3d'

request_body.completedDateTime=null

request_body.CompletionPercentage = 20

due_date_time = DateTimeTimeZone()
due_date_time.date_time = '2022-09-22T16:05:00.0000000'

due_date_time.time_zone = 'UTC'


request_body.due_date_time = due_date_time
request_body.external_course_activity_id = '12a2228a-e020-11ec-9d64-0242ac120002'

request_body.learning_content_id = '57baf9dc-e020-11ec-9d64-0242ac120002'

request_body.learning_provider_id = '01e8f81b-3060-4dec-acf0-0389665a0a38'

request_body.learner_user_id = '7ba2228a-e020-11ec-9d64-0242ac120002'

notes = ItemBody()
notes.contenttype(BodyType.Text('bodytype.text'))

notes.content = 'required assignment added for user'


request_body.notes = notes
request_body.status(CourseStatus.NotStarted('coursestatus.notstarted'))




result = await client.employee_experience.learning_providers.by_learning_provider_id('learningProvider-id').learning_course_activities.post(request_body = request_body)


```