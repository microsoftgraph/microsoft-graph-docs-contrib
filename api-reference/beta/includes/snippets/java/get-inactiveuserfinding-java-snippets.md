---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InactiveUserFinding inactiveUserFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("MSxJbmFjdGl2ZVVzZXJGaW5kaW5nLDI0MTI5MA").microsoft.graph.inactiveUserFinding()
	.buildRequest()
	.get();

```