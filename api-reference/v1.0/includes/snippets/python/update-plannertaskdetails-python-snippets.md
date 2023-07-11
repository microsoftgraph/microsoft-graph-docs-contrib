---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PlannerTaskDetails()
request_body.previewtype(PlannerPreviewType.NoPreview('plannerpreviewtype.nopreview'))

references = PlannerExternalReferences()
additional_data = [
'http%3_a//developer%2_emicrosoft%2_ecom' => references = Http%3A//developer%2Emicrosoft%2Ecom()
		references.@odata_type = 'microsoft.graph.plannerExternalReference'

		references.alias = 'Documentation'

		references.preview_priority = ' !'

		references.type = 'Other'


references.http%3_a//developer%2_emicrosoft%2_ecom = http%3A//developer%2Emicrosoft%2Ecom

'https%3_a//developer%2_emicrosoft%2_ecom/en-us/graph/graph-explorer' => references = Https%3A//developer%2Emicrosoft%2Ecom/en-us/graph/graph-explorer()
		references.@odata_type = 'microsoft.graph.plannerExternalReference'

		references.preview_priority = '  !!'


references.https%3_a//developer%2_emicrosoft%2_ecom/en-us/graph/graph-explorer = https%3A//developer%2Emicrosoft%2Ecom/en-us/graph/graph-explorer

'http%3_a//www%2_ebing%2_ecom' => 		null,
];
references.additional_data(additional_data)



request_body.references = references
checklist = PlannerChecklistItems()
additional_data = [
'95e27074-6c4a-447a-aa24-9d718a0b86fa' => checklist = 95e27074-6c4a-447a-aa24-9d718a0b86fa()
		checklist.@odata_type = 'microsoft.graph.plannerChecklistItem'

		checklist.title = 'Update task details'

		checklist.is_checked = True


checklist.95e27074-6c4a-447a-aa24-9d718a0b86fa = 95e27074-6c4a-447a-aa24-9d718a0b86fa

'd280ed1a-9f6b-4f9c-a962-fb4d00dc50ff' => checklist = D280ed1a-9f6b-4f9c-a962-fb4d00dc50ff()
		checklist.@odata_type = 'microsoft.graph.plannerChecklistItem'

		checklist.is_checked = True


checklist.d280ed1a-9f6b-4f9c-a962-fb4d00dc50ff = d280ed1a-9f6b-4f9c-a962-fb4d00dc50ff

'a93c93c5-10a6-4167-9551-8bafa09967a7' => 		null,
];
checklist.additional_data(additional_data)



request_body.checklist = checklist


request_configuration = DetailsRequestBuilder.DetailsRequestBuilderPatchRequestConfiguration(
headers = {
		'Prefer' : "return=representation",
		'If-Match' : "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"",
}

)


result = await client.planner.tasks.by_task_id('plannerTask-id').details.patch(request_body = request_body, request_configuration = request_configuration)


```