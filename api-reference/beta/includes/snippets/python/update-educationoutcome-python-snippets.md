---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.education_rubric_outcome import EducationRubricOutcome
from msgraph.generated.models.rubric_quality_feedback_model import RubricQualityFeedbackModel
from msgraph.generated.models.education_item_body import EducationItemBody
from msgraph.generated.models.rubric_quality_selected_column_model import RubricQualitySelectedColumnModel

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationRubricOutcome(
	odata_type = "#microsoft.graph.educationRubricOutcome",
	rubric_quality_feedback = [
		RubricQualityFeedbackModel(
			quality_id = "9a145aa8-f3d9-43a1-8f77-5387ff0693f2",
			feedback = EducationItemBody(
				content = "This is feedback specific to the first quality of the rubric.",
				content_type = BodyType.Text,
			),
		),
		RubricQualityFeedbackModel(
			quality_id = "d2331fb2-2761-402e-8de6-93e0afaa076e",
			feedback = EducationItemBody(
				content = "This is feedback specific to the second quality of the rubric.",
				content_type = BodyType.Text,
			),
		),
	],
	rubric_quality_selected_levels = [
		RubricQualitySelectedColumnModel(
			quality_id = "9a145aa8-f3d9-43a1-8f77-5387ff0693f2",
			column_id = "4fb17a1d-5681-46c2-a295-4e305c3eae23",
		),
		RubricQualitySelectedColumnModel(
			quality_id = "d2331fb2-2761-402e-8de6-93e0afaa076e",
			column_id = "aac076bf-51ba-48c5-a2e0-ee235b0b9740",
		),
	],
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignments.by_education_assignment_id('educationAssignment-id').submissions.by_education_submission_id('educationSubmission-id').outcomes.by_education_outcome_id('educationOutcome-id').patch(request_body)


```