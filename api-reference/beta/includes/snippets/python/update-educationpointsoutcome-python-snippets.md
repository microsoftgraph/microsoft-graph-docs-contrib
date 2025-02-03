---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.education_points_outcome import EducationPointsOutcome
from msgraph_beta.generated.models.education_assignment_points_grade import EducationAssignmentPointsGrade
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EducationPointsOutcome(
	odata_type = "#microsoft.graph.educationPointsOutcome",
	points = EducationAssignmentPointsGrade(
		odata_type = "#microsoft.graph.educationAssignmentPointsGrade",
		points = 85.0,
	),
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.by_education_assignment_id('educationAssignment-id').submissions.by_education_submission_id('educationSubmission-id').outcomes.by_education_outcome_id('educationOutcome-id').patch(request_body)


```