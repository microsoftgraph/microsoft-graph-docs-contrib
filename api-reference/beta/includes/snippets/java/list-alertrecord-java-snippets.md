---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AlertRecordCollectionPage alertRecords = graphClient.deviceManagement().monitoring().alertRecords()
	.buildRequest()
	.get();

```