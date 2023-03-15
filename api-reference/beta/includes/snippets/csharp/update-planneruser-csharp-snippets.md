---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PlannerUser
{
	FavoritePlanReferences = new PlannerFavoritePlanReferenceCollection
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"jd8S5gOaFk2S8aWCIAJz42QAAxtD" , new 
				{
					OdataType = "#microsoft.graph.plannerFavoritePlanReference",
					OrderHint = " !",
					PlanTitle = "Next Release Discussion",
				}
			},
			{
				"7oTB5aMIAE2rVo-1N-L7RmQAGX2q" , null
			},
		},
	},
	RecentPlanReferences = new PlannerRecentPlanReferenceCollection
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"jd8S5gOaFk2S8aWCIAJz42QAAxtD" , new 
				{
					OdataType = "#microsoft.graph.plannerRecentPlanReference",
					LastAccessedDateTime = "2018-01-02T22:49:46.155Z",
					PlanTitle = "Next Release Discussion",
				}
			},
		},
	},
};
var result = await graphClient.Me.Planner.PatchAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Prefer", "return=representation");
	requestConfiguration.Headers.Add("If-Match", "W/\"JzEtVXNlckRldGFpbHMgQEBAQEBAQEBAQEBAQEBIWCc=\"");
});


```