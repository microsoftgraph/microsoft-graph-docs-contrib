---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OverprovisionedAwsRoleFindingCollectionPage overprovisionedAwsRoleFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings().microsoft.graph.overprovisionedAwsRoleFinding()
	.buildRequest()
	.get();

```