---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnenforcedMfaAwsUserFindingCollectionPage unenforcedMfaAwsUserFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings().microsoft.graph.unenforcedMfaAwsUserFinding()
	.buildRequest()
	.get();

```