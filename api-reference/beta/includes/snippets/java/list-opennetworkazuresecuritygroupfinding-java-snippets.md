---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OpenNetworkAzureSecurityGroupFindingCollectionPage openNetworkAzureSecurityGroupFinding = graphClient.identityGovernance().permissionsAnalytics().azure().findings().microsoft.graph.openNetworkAzureSecurityGroupFinding()
	.buildRequest()
	.get();

```