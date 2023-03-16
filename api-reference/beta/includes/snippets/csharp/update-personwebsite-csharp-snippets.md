---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PersonWebsite
{
	Description = "Lyn Damer play in the Women's 1st Division (Toppserien) in Norway",
};
var result = await graphClient.Me.Profile.Websites["{personWebsite-id}"].PatchAsync(requestBody);


```