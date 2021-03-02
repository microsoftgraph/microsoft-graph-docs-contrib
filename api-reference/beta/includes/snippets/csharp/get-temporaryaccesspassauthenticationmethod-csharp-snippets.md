---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var temporaryAccessPassAuthenticationMethod = await graphClient.Users["kim@contoso.com"].Authentication.TemporaryAccessPassMethods["30fd0dfc-0dfc-30fd-fc0d-fd30fc0dfd30"]
	.Request()
	.GetAsync();

```