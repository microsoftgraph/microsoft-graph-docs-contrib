---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var users = await graphClient.Users
	.Request()
	.Filter("imAddresses/any(i:i eq 'admin@contoso.com')")
	.GetAsync();

```