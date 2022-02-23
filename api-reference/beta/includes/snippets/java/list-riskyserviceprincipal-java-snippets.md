---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RiskyServicePrincipalCollectionPage riskyServicePrincipals = graphClient.identityProtection().riskyServicePrincipals()
	.buildRequest()
	.get();

```