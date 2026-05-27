---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CloudPcCloudApp cloudPcCloudApp = new CloudPcCloudApp();
cloudPcCloudApp.setDisplayName("Remote Desktop Connection");
cloudPcCloudApp.setDiscoveredAppName("Remote Desktop Connection");
cloudPcCloudApp.setProvisioningPolicyId("e31f75e9-25a8-41e9-a9d5-ce8fd484af15");
cloudPcCloudApp.setDescription("");
CloudPcFilePathAppDetail appDetail = new CloudPcFilePathAppDetail();
appDetail.setOdataType("#microsoft.graph.cloudPcFilePathAppDetail");
appDetail.setFilePath("C:\Windows\system32\mstsc.exe");
appDetail.setCommandLineArguments("");
appDetail.setIconPath("C:\Windows\system32\mstsc.exe");
appDetail.setIconIndex(0);
cloudPcCloudApp.setAppDetail(appDetail);
CloudPcCloudApp result = graphClient.deviceManagement().virtualEndpoint().cloudApps().post(cloudPcCloudApp);


```