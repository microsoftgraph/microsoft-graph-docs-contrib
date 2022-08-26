---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPCGetCloudPcConnectivityHistoryCollectionPage getCloudPcConnectivityHistory = graphClient.deviceManagement().virtualEndpoint().cloudPCs("{id}")
	.getCloudPcConnectivityHistory()
	.buildRequest()
	.get();

```