---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

graph_client = GraphServiceClient(request_adapter)

request_body = EducationRubric(
	display_name = "Example Credit Rubric after display name patch",
)

result = await graph_client.education.me.rubrics.by_rubric_id('educationRubric-id').patch(body = request_body)


```