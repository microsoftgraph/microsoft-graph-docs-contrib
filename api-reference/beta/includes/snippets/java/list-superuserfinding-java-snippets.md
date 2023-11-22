---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SuperUserFindingCollectionPage superUserFinding = graphClient.identityGovernance().permissionsAnalytics().gcp().findings().microsoft.graph.superUserFinding()
	.buildRequest()
	.get();

```