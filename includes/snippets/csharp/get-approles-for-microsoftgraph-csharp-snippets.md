---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var servicePrincipals = await graphClient.ServicePrincipals
	.Request()
	.Filter("displayName eq 'Microsoft Graph'")
	.Select("id,displayName,appId,appRoles")
	.GetAsync();

```