---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String cloudPcSnapshotId = "A00009UV000_93aff428-61f2-467f-a879-1102af6fd4a8";

graphClient.deviceManagement().virtualEndpoint().cloudPCs("4b5ad5e0-6a0b-4ffc-818d-36bb23cf4dbd")
	.restore(CloudPCRestoreParameterSet
		.newBuilder()
		.withCloudPcSnapshotId(cloudPcSnapshotId)
		.build())
	.buildRequest()
	.post();

```