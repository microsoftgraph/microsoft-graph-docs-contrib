---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EncryptedGcpStorageBucketFindingCollectionPage encryptedGcpStorageBucketFinding = graphClient.identityGovernance().permissionsAnalytics().gcp().findings().microsoft.graph.encryptedGcpStorageBucketFinding()
	.buildRequest()
	.get();

```