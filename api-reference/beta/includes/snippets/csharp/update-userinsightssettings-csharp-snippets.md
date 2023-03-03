---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new UserInsightsSettings
{
	IsEnabled = false,
};
var result = await graphClient.Users["{user-id}"].Settings.ItemInsights.PatchAsync(requestBody);


```