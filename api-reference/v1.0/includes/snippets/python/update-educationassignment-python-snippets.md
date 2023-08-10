---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationAssignment()
request_body.display_name = 'Reading and review test 09.03 #5'

instructions = EducationItemBody()
instructions.contenttype(BodyType.Text('bodytype.text'))

instructions.content = 'Read chapter 5 and write your review'


request_body.instructions = instructions
request_body.dueDateTime = DateTime('2021-09-10T00:00:00Z')

request_body.addedstudentaction(EducationAddedStudentAction.None('educationaddedstudentaction.none'))




result = await client.education.classes.by_classe_id('educationClass-id').assignments.by_assignment_id('educationAssignment-id').patch(request_body = request_body)


```