---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationAssignment(
	display_name = "Reading and review test 09.03 #5",
	instructions = EducationItemBody(
		content_type = BodyType.Text,
		content = "Read chapter 5 and write your review",
	),
	due_date_time = "2021-09-10T00:00:00Z",
	added_student_action = EducationAddedStudentAction.None,
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.by_education_assignment_id('educationAssignment-id').patch(request_body)


```