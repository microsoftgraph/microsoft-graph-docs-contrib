---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Users["kim@contoso.com"].Authentication.TemporaryAccessPassMethods["{id}"]
	.Request()
	.DeleteAsync();

```