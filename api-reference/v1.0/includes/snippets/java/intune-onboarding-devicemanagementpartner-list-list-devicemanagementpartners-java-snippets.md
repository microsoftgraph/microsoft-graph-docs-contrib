---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceManagementPartnerCollectionPage deviceManagementPartners = graphClient.deviceManagement().deviceManagementPartners()
	.buildRequest()
	.get();

```