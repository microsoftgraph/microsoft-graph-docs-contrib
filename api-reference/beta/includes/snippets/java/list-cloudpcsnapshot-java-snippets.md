---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcSnapshotCollectionPage snapshots = graphClient.deviceManagement().virtualEndpoint().snapshots()
	.buildRequest()
	.get();

```