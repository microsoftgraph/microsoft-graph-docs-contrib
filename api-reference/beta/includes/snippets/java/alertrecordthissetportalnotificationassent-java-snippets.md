---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.deviceManagement().monitoring().alertRecords("6c46a7ba-e78a-45e5-a81c-179ab8fd3e8e")
	.setPortalNotificationAsSent()
	.buildRequest()
	.post();

```