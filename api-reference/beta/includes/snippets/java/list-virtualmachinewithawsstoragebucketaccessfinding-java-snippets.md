---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

VirtualMachineWithAwsStorageBucketAccessFindingCollectionPage virtualMachineWithAwsStorageBucketAccessFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings().microsoft.graph.virtualMachineWithAwsStorageBucketAccessFinding()
	.buildRequest()
	.get();

```