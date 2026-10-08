---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CloudPcCloudApp cloudPcCloudApp = new CloudPcCloudApp();
cloudPcCloudApp.setOdataType("#microsoft.graph.cloudPcCloudApp");
cloudPcCloudApp.setDisplayName("Cloud App example3");
CloudPcAutomaticDiscoveredAppDetail appDetail = new CloudPcAutomaticDiscoveredAppDetail();
appDetail.setOdataType("#microsoft.graph.cloudPcAutomaticDiscoveredAppDetail");
appDetail.setIconPath("C:\Windows\system32\WindowsPowerShell\v1.0\powershell_ise.exe");
cloudPcCloudApp.setAppDetail(appDetail);
CloudPcCloudApp result = graphClient.deviceManagement().virtualEndpoint().cloudApps().byCloudPcCloudAppId("{cloudPcCloudApp-id}").patch(cloudPcCloudApp);


```