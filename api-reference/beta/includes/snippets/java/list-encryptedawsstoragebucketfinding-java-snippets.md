---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EncryptedAwsStorageBucketFindingCollectionPage encryptedAwsStorageBucketFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings().microsoft.graph.encryptedAwsStorageBucketFinding()
	.buildRequest()
	.get();

```