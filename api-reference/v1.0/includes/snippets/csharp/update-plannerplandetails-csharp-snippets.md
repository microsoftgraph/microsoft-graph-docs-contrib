---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PlannerPlanDetails
{
	SharedWith = new PlannerUserIds
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"6463a5ce-2119-4198-9f2a-628761df4a62" , true
			},
			{
				"d95e6152-f683-4d78-9ff5-67ad180fea4a" , false
			},
		},
	},
	CategoryDescriptions = new PlannerCategoryDescriptions
	{
		Category1 = "Indoors",
		Category3 = null,
	},
};
var result = await graphClient.Planner.Plans["{plannerPlan-id}"].Details.PatchAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Prefer", "return=representation");
	requestConfiguration.Headers.Add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"");
});


```