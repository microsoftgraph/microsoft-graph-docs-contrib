---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ItemAddress
{
	AllowedAudiences = AllowedAudiences.Me,
	DisplayName = "Secret Hideout",
};
var result = await graphClient.Users["{user-id}"].Profile.Addresses["{itemAddress-id}"].PatchAsync(requestBody);


```