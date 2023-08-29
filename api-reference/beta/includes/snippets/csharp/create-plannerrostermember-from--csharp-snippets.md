---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PlannerRosterMember
{
	OdataType = "#microsoft.graph.plannerRosterMember",
	UserId = "String",
};
var result = await graphClient.Planner.Rosters["{plannerRoster-id}"].Members.PostAsync(requestBody);


```