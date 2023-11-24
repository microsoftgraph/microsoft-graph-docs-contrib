---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InactiveAzureServicePrincipalFindingCollectionPage inactiveAzureServicePrincipalFinding = graphClient.identityGovernance().permissionsAnalytics().azure().findings().microsoft.graph.inactiveAzureServicePrincipalFinding()
	.buildRequest()
	.get();

```