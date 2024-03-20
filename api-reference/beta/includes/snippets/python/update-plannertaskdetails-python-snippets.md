---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

from msgraph import GraphServiceClient
from msgraph.generated.planner.tasks.item.details.details_request_builder import DetailsRequestBuilder
from msgraph.generated.models.planner_task_details import PlannerTaskDetails
from msgraph.generated.models.planner_external_references import PlannerExternalReferences
from msgraph.generated.models.planner_external_reference import PlannerExternalReference
from msgraph.generated.models.planner_checklist_items import PlannerChecklistItems
from msgraph.generated.models.planner_checklist_item import PlannerChecklistItem

graph_client = GraphServiceClient(credentials, scopes)

request_body = PlannerTaskDetails(
	preview_type = PlannerPreviewType.NoPreview,
	references = PlannerExternalReferences(
		additional_data = {
				"http%3_a//developer%2_emicrosoft%2_ecom" : {
						"@odata_type" : "microsoft.graph.plannerExternalReference",
						"alias" : "Documentation",
						"preview_priority" : " !",
						"type" : "Other",
				},
				"https%3_a//developer%2_emicrosoft%2_ecom/graph/graph-explorer" : {
						"@odata_type" : "microsoft.graph.plannerExternalReference",
						"preview_priority" : "  !!",
				},
				"http%3_a//www%2_ebing%2_ecom" : None,
		}
	),
	checklist = PlannerChecklistItems(
		additional_data = {
				"95e27074-6c4a-447a-aa24-9d718a0b86fa" : {
						"@odata_type" : "microsoft.graph.plannerChecklistItem",
						"title" : "Update task details",
						"is_checked" : True,
				},
				"d280ed1a-9f6b-4f9c-a962-fb4d00dc50ff" : {
						"@odata_type" : "microsoft.graph.plannerChecklistItem",
						"is_checked" : True,
				},
				"a93c93c5-10a6-4167-9551-8bafa09967a7" : None,
		}
	),
	description = "Updated task details properties:\nUpdated checklist:Sub items\nUpdated references:Related links",
)

request_configuration = DetailsRequestBuilder.DetailsRequestBuilderPatchRequestConfiguration()
request_configuration.headers.add("Prefer", "return=representation")
request_configuration.headers.add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")


result = await graph_client.planner.tasks.by_planner_task_id('plannerTask-id').details.patch(request_body, request_configuration = request_configuration)


```