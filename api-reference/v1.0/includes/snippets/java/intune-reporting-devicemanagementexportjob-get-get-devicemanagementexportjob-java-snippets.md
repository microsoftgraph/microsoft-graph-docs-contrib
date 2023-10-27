---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceManagementExportJob deviceManagementExportJob = graphClient.deviceManagement().reports().exportJobs("{deviceManagementExportJobId}")
	.buildRequest()
	.get();

```