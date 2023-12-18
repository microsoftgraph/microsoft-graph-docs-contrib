---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SuperAzureServicePrincipalFindingCollectionPage superAzureServicePrincipalFinding = graphClient.identityGovernance().permissionsAnalytics().azure().findings().microsoft.graph.superAzureServicePrincipalFinding()
	.buildRequest()
	.get();

```