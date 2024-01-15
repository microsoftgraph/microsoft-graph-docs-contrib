---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OpenNetworkAzureSecurityGroupFinding openNetworkAzureSecurityGroupFinding = graphClient.identityGovernance().permissionsAnalytics().azure().findings("MSxPcGVuTmV0d29ya0F6dXJlU2VjdXJpdHlHcm91cEZpbmRpbmcsMjIyNjk1").microsoft.graph.openNetworkAzureSecurityGroupFinding()
	.buildRequest()
	.get();

```