---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PlannerPlanDetails()
shared_with = PlannerUserIds()
additional_data = [
'6463a5ce-2119-4198-9f2a-628761df4a62' => true,
'd95e6152-f683-4d78-9ff5-67ad180fea4a' => false,
];
shared_with.additional_data(additional_data)



request_body.shared_with = shared_with
category_descriptions = PlannerCategoryDescriptions()
category_descriptions.category1 = 'Indoors'

category_descriptions.category3=null


request_body.category_descriptions = category_descriptions


request_configuration = DetailsRequestBuilder.DetailsRequestBuilderPatchRequestConfiguration(
headers = {
		'Prefer' : "return=representation",
		'If-Match' : "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"",
}

)


result = await client.planner.plans.by_plan_id('plannerPlan-id').details.patch(request_body = request_body, request_configuration = request_configuration)


```