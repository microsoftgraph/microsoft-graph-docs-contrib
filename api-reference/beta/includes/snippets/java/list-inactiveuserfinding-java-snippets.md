---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InactiveUserFindingCollectionPage inactiveUserFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings().microsoft.graph.inactiveUserFinding()
	.buildRequest()
	.get();

```