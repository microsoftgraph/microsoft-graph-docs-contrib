---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RiskyServicePrincipal riskyServicePrincipal = graphClient.identityProtection().riskyServicePrincipals("9089a539-a539-9089-39a5-899039a58990")
	.buildRequest()
	.get();

```