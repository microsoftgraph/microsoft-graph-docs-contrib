---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AlertRecordGetPortalNotificationsCollectionPage getPortalNotifications = graphClient.deviceManagement().monitoring().alertRecords()
	.getPortalNotifications()
	.buildRequest()
	.get();

```