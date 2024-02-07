---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OverprovisionedGcpServiceAccountFindingCollectionPage overprovisionedGcpServiceAccountFinding = graphClient.identityGovernance().permissionsAnalytics().gcp().findings().microsoft.graph.overprovisionedGcpServiceAccountFinding()
	.buildRequest()
	.get();

```