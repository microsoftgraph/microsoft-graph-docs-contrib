---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

VirtualMachineWithAwsStorageBucketAccessFinding virtualMachineWithAwsStorageBucketAccessFinding = graphClient.identityGovernance().permissionsAnalytics().aws().findings("MSxWaXJ0dWFsTWFjaGluZVdpdGhBd3NTdG9yYWdlQnVja2V0QWNjZXNzRmluZGluZyw0MzUwMg").microsoft.graph.virtualMachineWithAwsStorageBucketAccessFinding()
	.buildRequest()
	.get();

```