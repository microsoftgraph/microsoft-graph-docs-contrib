---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ItemPhone
{
	Type = PhoneType.Other,
};
var result = await graphClient.Users["{user-id}"].Profile.Phones["{itemPhone-id}"].PatchAsync(requestBody);


```