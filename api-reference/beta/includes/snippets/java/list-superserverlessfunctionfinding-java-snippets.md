---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SuperServerlessFunctionFindingCollectionPage superServerlessFunctionFinding = graphClient.identityGovernance().permissionsAnalytics().azure().findings().microsoft.graph.superServerlessFunctionFinding()
	.buildRequest()
	.get();

```