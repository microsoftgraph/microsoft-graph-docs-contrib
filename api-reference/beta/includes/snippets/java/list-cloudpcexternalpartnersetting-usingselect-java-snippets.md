---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcExternalPartnerSettingCollectionPage externalPartnerSettings = graphClient.deviceManagement().virtualEndpoint().externalPartnerSettings()
	.buildRequest()
	.select("id,partnerId,enableConnection")
	.get();

```