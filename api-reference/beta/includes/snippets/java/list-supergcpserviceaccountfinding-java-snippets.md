---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SuperGcpServiceAccountFindingCollectionPage superGcpServiceAccountFinding = graphClient.identityGovernance().permissionsAnalytics().gcp().findings().microsoft.graph.superGcpServiceAccountFinding()
	.buildRequest()
	.get();

```