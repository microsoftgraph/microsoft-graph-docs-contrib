---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var servicePrincipals = await graphClient.ServicePrincipals["{servicePrincipal-id}"]
	.Request()
	.Select("AppRoles")
	.GetAsync();

var appRoles = servicePrincipals.AppRoles;

```