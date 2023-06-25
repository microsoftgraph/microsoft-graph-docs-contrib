---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = EducationPointsOutcome()
request_body.@odata_type = '#microsoft.graph.educationPointsOutcome'

points = EducationAssignmentPointsGrade()
points.@odata_type = '#microsoft.graph.educationAssignmentPointsGrade'

points.Points = 85.0


request_body.points = points



result = await client.education.classes.by_classe_id('educationClass-id').assignments.by_assignment_id('educationAssignment-id').submissions.by_submission_id('educationSubmission-id').outcomes.by_outcome_id('educationOutcome-id').patch(request_body = request_body)


```