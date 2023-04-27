---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PlannerProgressTaskBoardTaskFormat
{
	OrderHint = "A6673H Ejkl!",
};
var result = await graphClient.Planner.Tasks["{plannerTask-id}"].ProgressTaskBoardFormat.PatchAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Prefer", "return=representation");
	requestConfiguration.Headers.Add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"");
});


```