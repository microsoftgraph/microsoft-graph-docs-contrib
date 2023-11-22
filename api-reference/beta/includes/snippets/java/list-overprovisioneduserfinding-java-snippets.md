---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OverprovisionedUserFindingCollectionPage overprovisionedUserFinding = graphClient.identityGovernance().permissionsAnalytics().azure().findings().microsoft.graph.overprovisionedUserFinding()
	.buildRequest()
	.get();

```