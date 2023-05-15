---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TeamworkTag
{
	DisplayName = "Finance",
};
var result = await graphClient.Teams["{team-id}"].Tags["{teamworkTag-id}"].PatchAsync(requestBody);


```