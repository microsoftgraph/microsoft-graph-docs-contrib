---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var password = "1234567890";

await graphClient.Users
	.ValidatePassword(password)
	.Request()
	.PostAsync();

```