---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new TemporaryAccessPassAuthenticationMethod
{
	StartDateTime = DateTimeOffset.Parse("2022-06-05T00:00:00.000Z"),
	LifetimeInMinutes = 60,
	IsUsableOnce = false,
};
var result = await graphClient.Users["{user-id}"].Authentication.TemporaryAccessPassMethods.PostAsync(requestBody);


```