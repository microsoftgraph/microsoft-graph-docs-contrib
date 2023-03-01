---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PersonName
{
	Nickname = "Kesha",
};
var result = await graphClient.Me.Profile.Names["{personName-id}"].PatchAsync(requestBody);


```