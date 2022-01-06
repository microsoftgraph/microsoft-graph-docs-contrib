---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ReportRootGetAttackSimulationRepeatOffendersCollectionPage getAttackSimulationRepeatOffenders = graphClient.reports()
	.getAttackSimulationRepeatOffenders()
	.buildRequest()
	.get();

```