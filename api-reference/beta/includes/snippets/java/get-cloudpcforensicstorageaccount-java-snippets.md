---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcSnapshotGetStorageAccountsCollectionPage getStorageAccounts = graphClient.deviceManagement().virtualEndpoint().snapshots()
	.getStorageAccounts(CloudPcSnapshotGetStorageAccountsParameterSet
		.newBuilder()
		.withSubscriptionId("cb6ad4c4-8a17-4245-a644-e4436b1ee204")
		.build())
	.buildRequest()
	.get();

```