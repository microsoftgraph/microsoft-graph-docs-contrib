---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExternallyAccessibleGcpStorageBucketFindingCollectionPage externallyAccessibleGcpStorageBucketFinding = graphClient.identityGovernance().permissionsAnalytics().gcp().findings().microsoft.graph.externallyAccessibleGcpStorageBucketFinding()
	.buildRequest()
	.get();

```