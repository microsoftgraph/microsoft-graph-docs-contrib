---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ItemPhone
{
	Type = PhoneType.Other,
};
var result = await graphClient.Users["{user-id}"].Profile.Phones["{itemPhone-id}"].PatchAsync(requestBody);


```