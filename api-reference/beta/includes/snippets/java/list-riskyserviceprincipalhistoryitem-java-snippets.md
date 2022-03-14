---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RiskyServicePrincipalHistoryItemCollectionPage history = graphClient.identityProtection().riskyServicePrincipals("{riskyServicePrincipalId}").history()
	.buildRequest()
	.get();

```