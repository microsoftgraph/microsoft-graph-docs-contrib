---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationAssignment()
request_body.dueDateTime = DateTime('2022-09-16T00:00:00Z')

request_body.display_name = 'Reading test 09.14 Beta'

instructions = EducationItemBody()
instructions.contenttype(BodyType.Text('bodytype.text'))

instructions.content = 'Read chapter 4'


request_body.instructions = instructions
grading = EducationAssignmentPointsGradeType()
grading.@odata_type = '#microsoft.graph.educationAssignmentPointsGradeType'

grading.MaxPoints = 50


request_body.grading = grading
assign_to = EducationAssignmentClassRecipient()
assign_to.@odata_type = '#microsoft.graph.educationAssignmentClassRecipient'


request_body.assign_to = assign_to
request_body.status(EducationAssignmentStatus.Draft('educationassignmentstatus.draft'))

request_body.allow_students_to_add_resources_to_submission = True




result = await client.education.classes.by_classe_id('educationClass-id').assignments.post(request_body = request_body)


```