---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CloudPcExternalPartnerSetting cloudPcExternalPartnerSetting = new CloudPcExternalPartnerSetting();
cloudPcExternalPartnerSetting.setOdataType("#microsoft.graph.cloudPcExternalPartnerSetting");
cloudPcExternalPartnerSetting.setPartnerId("198d7140-80bb-4843-8cc4-811377a49a92");
cloudPcExternalPartnerSetting.setEnableConnection(true);
CloudPcExternalPartnerSetting result = graphClient.deviceManagement().virtualEndpoint().externalPartnerSettings().post(cloudPcExternalPartnerSetting);


```