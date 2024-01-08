---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ServicePrincipalCollectionPage servicePrincipals = graphClient.servicePrincipals()
	.buildRequest()
	.filter("appId eq '00000002-0000-0000-c000-000000000000'")
	.get();

```