---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# Code snippets are only available for the latest version. Current version is 1.x
from msgraph_beta import GraphServiceClient
from msgraph_beta.generated.models.education_assignment_settings import EducationAssignmentSettings
# To initialize your graph_client, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=python
request_body = EducationAssignmentSettings(
	additional_data = {
			"grading_categories@delta" : [
				{
						"id" : "fb859cd3-943b-4cd6-9bbe-fe1c39eace0e",
						"display_name" : "Lab Test",
				},
				{
						"@odata_context" : "https://graph.microsoft.com/beta/$metadata#gradingCategories/$deletedEntity",
						"id" : "e2a86277-24f9-4f29-8196-8c83fc69d00d",
						"reason" : "deleted",
				},
				{
						"display_name" : "Lab Practice",
						"percentage_weight" : 30,
				},
				{
						"display_name" : "Lab Theory",
						"percentage_weight" : 10,
				},
			],
	}
)

result = await graph_client.education.classes.by_education_class_id('educationClass-id').assignment_settings.patch(request_body)


```