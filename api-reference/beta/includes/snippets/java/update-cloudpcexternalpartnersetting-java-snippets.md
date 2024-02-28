---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CloudPcExternalPartnerSetting cloudPcExternalPartnerSetting = new CloudPcExternalPartnerSetting();
cloudPcExternalPartnerSetting.setOdataType("#microsoft.graph.cloudPcExternalPartnerSetting");
cloudPcExternalPartnerSetting.setEnableConnection(true);
CloudPcExternalPartnerSetting result = graphClient.deviceManagement().virtualEndpoint().externalPartnerSettings().byCloudPcExternalPartnerSettingId("{cloudPcExternalPartnerSetting-id}").patch(cloudPcExternalPartnerSetting);


```