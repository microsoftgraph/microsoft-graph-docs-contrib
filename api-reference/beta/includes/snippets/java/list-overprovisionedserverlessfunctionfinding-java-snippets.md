---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OverprovisionedServerlessFunctionFindingCollectionPage overprovisionedServerlessFunctionFinding = graphClient.identityGovernance().permissionsAnalytics().azure().findings().microsoft.graph.overprovisionedServerlessFunctionFinding()
	.buildRequest()
	.get();

```