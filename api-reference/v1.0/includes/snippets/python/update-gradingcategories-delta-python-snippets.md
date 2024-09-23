---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph import GraphServiceClient
from msgraph.generated.models.education_assignment_settings import EducationAssignmentSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
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