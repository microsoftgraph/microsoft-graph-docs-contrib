---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationAssignment(
	due_date_time = "2022-09-16T00:00:00Z",
	display_name = "Reading test 09.14 Beta",
	instructions = EducationItemBody(
		content_type = BodyType.Text,
		content = "Read chapter 4",
	),
	grading = EducationAssignmentPointsGradeType(
		odata_type = "#microsoft.graph.educationAssignmentPointsGradeType",
		max_points = 50,
	),
	assign_to = EducationAssignmentClassRecipient(
		odata_type = "#microsoft.graph.educationAssignmentClassRecipient",
	),
	status = EducationAssignmentStatus.Draft,
	allow_students_to_add_resources_to_submission = True,
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.post(request_body)


```