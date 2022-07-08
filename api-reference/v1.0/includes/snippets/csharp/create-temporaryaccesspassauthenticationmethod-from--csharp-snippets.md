---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var temporaryAccessPassAuthenticationMethod = new TemporaryAccessPassAuthenticationMethod
{
	StartDateTime = DateTimeOffset.Parse("2022-06-05T00:00:00Z"),
	LifetimeInMinutes = 60,
	IsUsableOnce = false
};

await graphClient.Users["{user-id}"].Authentication.TemporaryAccessPassMethods
	.Request()
	.AddAsync(temporaryAccessPassAuthenticationMethod);

```