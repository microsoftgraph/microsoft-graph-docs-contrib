---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.education_assignment import EducationAssignment
from msgraph_beta.generated.models.education_item_body import EducationItemBody
from msgraph_beta.generated.models.body_type import BodyType
from msgraph_beta.generated.models.education_assignment_points_grade_type import EducationAssignmentPointsGradeType
from msgraph_beta.generated.models.education_assignment_class_recipient import EducationAssignmentClassRecipient
from msgraph_beta.generated.models.education_assignment_status import EducationAssignmentStatus
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EducationAssignment(
	due_date_time = "2025-09-16T00:00:00Z",
	display_name = "Reading test 09.14",
	language_tag = "es-MX",
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