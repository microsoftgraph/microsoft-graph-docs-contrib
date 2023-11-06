---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

# THE PYTHON SDK IS IN PREVIEW. FOR NON-PRODUCTION USE ONLY

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
				"https%3_a//developer%2_emicrosoft%2_ecom/en-us/graph/graph-explorer" : {
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
)

request_configuration = DetailsRequestBuilder.DetailsRequestBuilderPatchRequestConfiguration(
headers = {
		'Prefer' : "return=representation",
		'If-Match' : "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"",
}

)

result = await graph_client.planner.tasks.by_planner_task_id('plannerTask-id').details.patch(request_body, request_configuration = request_configuration)


```