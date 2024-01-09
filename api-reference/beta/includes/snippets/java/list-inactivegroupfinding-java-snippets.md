---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InactiveGroupFindingCollectionPage inactiveGroupFinding = graphClient.identityGovernance().permissionsAnalytics().gcp().findings().microsoft.graph.inactiveGroupFinding()
	.buildRequest()
	.get();

```