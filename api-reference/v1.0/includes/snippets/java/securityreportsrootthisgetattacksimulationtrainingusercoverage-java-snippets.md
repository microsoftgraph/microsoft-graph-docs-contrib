---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SecurityReportsRootGetAttackSimulationTrainingUserCoverageCollectionPage getAttackSimulationTrainingUserCoverage = graphClient.reports().security()
	.getAttackSimulationTrainingUserCoverage()
	.buildRequest()
	.get();

```