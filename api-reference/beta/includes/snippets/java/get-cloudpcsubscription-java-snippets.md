---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcSnapshotGetSubscriptionsCollectionPage getSubscriptions = graphClient.deviceManagement().virtualEndpoint().snapshots()
	.getSubscriptions()
	.buildRequest()
	.get();

```