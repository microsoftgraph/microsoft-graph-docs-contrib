---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ServicePrincipal servicePrincipal = graphClient.servicePrincipals("7408235b-7540-4850-82fe-a5f15ed019e2")
	.buildRequest()
	.select("id,appId,displayName,appRoles,oauth2PermissionScopes,resourceSpecificApplicationPermissions")
	.get();

```