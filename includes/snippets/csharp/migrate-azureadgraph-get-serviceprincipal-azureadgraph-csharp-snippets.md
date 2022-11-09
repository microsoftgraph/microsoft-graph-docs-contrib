---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var servicePrincipals = await graphClient.ServicePrincipals
	.Request()
	.Filter("appId eq '00000002-0000-0000-c000-000000000000'")
	.GetAsync();

```