---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var servicePrincipal = await graphClient.ServicePrincipals["{servicePrincipal-id}"]
	.Request()
	.Select("id,appId,displayName,appRoles,oauth2PermissionScopes")
	.GetAsync();

```