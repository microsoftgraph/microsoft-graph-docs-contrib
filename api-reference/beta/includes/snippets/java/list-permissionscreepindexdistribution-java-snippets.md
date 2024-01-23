---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PermissionsCreepIndexDistributionCollectionPage permissionsCreepIndexDistributions = graphClient.identityGovernance().permissionsAnalytics().aws().permissionsCreepIndexDistributions()
	.buildRequest()
	.get();

```