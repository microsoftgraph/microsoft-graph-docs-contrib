---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OpenAwsSecurityGroupFindingCollectionPage openAwsSecurityGroupFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings().microsoft.graph.openAwsSecurityGroupFinding()
	.buildRequest()
	.get();

```