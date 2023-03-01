---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PlannerTask
{
	Assignments = new PlannerAssignments
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"fbab97d0-4932-4511-b675-204639209557" , new 
				{
					OdataType = "#microsoft.graph.plannerAssignment",
					OrderHint = "N9917 U2883!",
				}
			},
		},
	},
	AppliedCategories = new PlannerAppliedCategories
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"category3" , true
			},
			{
				"category4" , false
			},
		},
	},
};
var result = await graphClient.Planner.Tasks["{plannerTask-id}"].PatchAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Prefer", "return=representation");
	requestConfiguration.Headers.Add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"");
});


```