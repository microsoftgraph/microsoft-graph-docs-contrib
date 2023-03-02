---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ItemPublication
{
	Publisher = "International Association of Branding Management Publishing",
	ThumbnailUrl = "https://iabm.io/sdhdfhsdhshsd.jpg",
};
var result = await graphClient.Users["{user-id}"].Profile.Publications["{itemPublication-id}"].PatchAsync(requestBody);


```