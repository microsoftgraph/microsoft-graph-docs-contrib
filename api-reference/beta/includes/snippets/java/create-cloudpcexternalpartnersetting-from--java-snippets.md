---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcExternalPartnerSetting cloudPcExternalPartnerSetting = new CloudPcExternalPartnerSetting();
cloudPcExternalPartnerSetting.partnerId = "198d7140-80bb-4843-8cc4-811377a49a92";
cloudPcExternalPartnerSetting.enableConnection = true;

graphClient.deviceManagement().virtualEndpoint().externalPartnerSettings()
	.buildRequest()
	.post(cloudPcExternalPartnerSetting);

```