---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ServicePrincipalCollectionPage servicePrincipals = graphClient.servicePrincipals()
	.buildRequest()
	.filter("displayName eq 'Microsoft Graph'")
	.select("id,displayName,appId,appRoles")
	.get();

```