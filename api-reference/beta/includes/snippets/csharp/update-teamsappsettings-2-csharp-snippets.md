---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TeamsAppSettings
{
	OdataType = "#microsoft.graph.teamsAppSettings",
	AllowUserRequestsForAppAccess = true,
};
var result = await graphClient.Teamwork.TeamsAppSettings.PatchAsync(requestBody);


```