---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InactiveServerlessFunctionFindingCollectionPage inactiveServerlessFunctionFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings().microsoft.graph.inactiveServerlessFunctionFinding()
	.buildRequest()
	.get();

```