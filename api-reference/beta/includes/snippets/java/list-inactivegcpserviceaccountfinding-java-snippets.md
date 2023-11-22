---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InactiveGcpServiceAccountFindingCollectionPage inactiveGcpServiceAccountFinding = graphClient.identityGovernance().permissionsAnalytics().gcp().findings().microsoft.graph.inactiveGcpServiceAccountFinding()
	.buildRequest()
	.get();

```