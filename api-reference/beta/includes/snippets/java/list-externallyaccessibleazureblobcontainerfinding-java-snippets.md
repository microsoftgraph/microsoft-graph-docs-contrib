---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExternallyAccessibleAzureBlobContainerFindingCollectionPage externallyAccessibleAzureBlobContainerFinding = graphClient.identityGovernance().permissionsAnalytics().azure().findings().microsoft.graph.externallyAccessibleAzureBlobContainerFinding()
	.buildRequest()
	.get();

```