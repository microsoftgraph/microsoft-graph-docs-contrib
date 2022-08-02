---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SecurityReportsRootGetAttackSimulationRepeatOffendersCollectionPage getAttackSimulationRepeatOffenders = graphClient.reports().security()
	.getAttackSimulationRepeatOffenders()
	.buildRequest()
	.get();

```