---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SecurityReportsRootGetAttackSimulationSimulationUserCoverageCollectionPage getAttackSimulationSimulationUserCoverage = graphClient.reports().security()
	.getAttackSimulationSimulationUserCoverage()
	.buildRequest()
	.get();

```