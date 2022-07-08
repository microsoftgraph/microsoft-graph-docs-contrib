---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ReportRootGetAttackSimulationTrainingUserCoverageCollectionPage getAttackSimulationTrainingUserCoverage = graphClient.reports()
	.getAttackSimulationTrainingUserCoverage()
	.buildRequest()
	.get();

```