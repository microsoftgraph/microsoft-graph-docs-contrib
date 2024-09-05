---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.models.education_assignment_settings import EducationAssignmentSettings

graph_client = GraphServiceClient(credentials, scopes)

request_body = EducationAssignmentSettings(
	additional_data = {
			"grading_categories@delta" : [
				{
						"id" : "03bd9196-ce2e-41bd-902f-df9ae02de4db",
						"display_name" : "Lab Updated",
				},
				{
						"@odata_context" : "https://graph.microsoft.com/beta/$metadata#gradingCategories/$deletedEntity",
						"id" : "109e5d73-3ef7-42a5-88d8-7e30cdb85f06",
						"reason" : "deleted",
				},
				{
						"display_name" : "New Homework",
						"percentage_weight" : 50,
				},
			],
	}
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignment_settings.patch(request_body)


```