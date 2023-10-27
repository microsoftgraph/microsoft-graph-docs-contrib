---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceManagementReports deviceManagementReports = new DeviceManagementReports();

graphClient.deviceManagement().reports()
	.buildRequest()
	.patch(deviceManagementReports);

```