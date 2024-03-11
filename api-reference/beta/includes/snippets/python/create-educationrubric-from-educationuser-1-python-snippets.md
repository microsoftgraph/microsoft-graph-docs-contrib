---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.education_rubric import EducationRubric
from msgraph.generated.models.education_item_body import EducationItemBody
from msgraph.generated.models.rubric_level import RubricLevel
from msgraph.generated.models.rubric_quality import RubricQuality
from msgraph.generated.models.rubric_criterion import RubricCriterion

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationRubric(
	display_name = "Example Credit Rubric",
	description = EducationItemBody(
		content = "This is an example of a credit rubric (no points)",
		content_type = BodyType.Text,
	),
	levels = [
		RubricLevel(
			display_name = "Good",
			description = EducationItemBody(
				content = "",
				content_type = BodyType.Text,
			),
		),
		RubricLevel(
			display_name = "Poor",
			description = EducationItemBody(
				content = "",
				content_type = BodyType.Text,
			),
		),
	],
	qualities = [
		RubricQuality(
			description = EducationItemBody(
				content = "Argument",
				content_type = BodyType.Text,
			),
			criteria = [
				RubricCriterion(
					description = EducationItemBody(
						content = "The essay's argument is persuasive.",
						content_type = BodyType.Text,
					),
				),
				RubricCriterion(
					description = EducationItemBody(
						content = "The essay's argument does not make sense.",
						content_type = BodyType.Text,
					),
				),
			],
		),
		RubricQuality(
			description = EducationItemBody(
				content = "Spelling and Grammar",
				content_type = BodyType.Text,
			),
			criteria = [
				RubricCriterion(
					description = EducationItemBody(
						content = "The essay uses proper spelling and grammar with few or no errors.",
						content_type = BodyType.Text,
					),
				),
				RubricCriterion(
					description = EducationItemBody(
						content = "The essay has numerous errors in spelling and/or grammar.",
						content_type = BodyType.Text,
					),
				),
			],
		),
	],
)

result = await graph_client.education.me.rubrics.post(request_body)


```