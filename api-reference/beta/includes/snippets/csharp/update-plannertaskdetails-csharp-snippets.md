---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PlannerTaskDetails
{
	PreviewType = PlannerPreviewType.NoPreview,
	References = new PlannerExternalReferences
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"http%3A//developer%2Emicrosoft%2Ecom" , new 
				{
					OdataType = "microsoft.graph.plannerExternalReference",
					Alias = "Documentation",
					PreviewPriority = " !",
					Type = "Other",
				}
			},
			{
				"https%3A//developer%2Emicrosoft%2Ecom/graph/graph-explorer" , new 
				{
					OdataType = "microsoft.graph.plannerExternalReference",
					PreviewPriority = "  !!",
				}
			},
			{
				"http%3A//www%2Ebing%2Ecom" , null
			},
		},
	},
	Checklist = new PlannerChecklistItems
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"95e27074-6c4a-447a-aa24-9d718a0b86fa" , new 
				{
					OdataType = "microsoft.graph.plannerChecklistItem",
					Title = "Update task details",
					IsChecked = true,
				}
			},
			{
				"d280ed1a-9f6b-4f9c-a962-fb4d00dc50ff" , new 
				{
					OdataType = "microsoft.graph.plannerChecklistItem",
					IsChecked = true,
				}
			},
			{
				"a93c93c5-10a6-4167-9551-8bafa09967a7" , null
			},
		},
	},
	Description = "Updated task details properties:\nUpdated checklist:Sub items\nUpdated references:Related links",
};
var result = await graphClient.Planner.Tasks["{plannerTask-id}"].Details.PatchAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Prefer", "return=representation");
	requestConfiguration.Headers.Add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"");
});


```