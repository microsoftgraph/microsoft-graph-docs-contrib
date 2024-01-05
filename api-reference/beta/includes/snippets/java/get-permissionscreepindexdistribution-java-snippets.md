---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PermissionsCreepIndexDistribution permissionsCreepIndexDistribution = graphClient.identityGovernance().permissionsAnalytics().aws().permissionsCreepIndexDistributions("MSxQZXJtaXNzaW9uc0NyZWVwSW5kZXhEaXN0cmlidXRpb24sMjM3ODMyLTIzNzgzMy0yMzc4MzQ")
	.buildRequest()
	.get();

```