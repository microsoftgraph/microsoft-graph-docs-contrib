---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceManagementReports deviceManagementReports = new DeviceManagementReports();
deviceManagementReports.setOdataType("#microsoft.graph.deviceManagementReports");
DeviceManagementReports result = graphClient.deviceManagement().reports().patch(deviceManagementReports);


```