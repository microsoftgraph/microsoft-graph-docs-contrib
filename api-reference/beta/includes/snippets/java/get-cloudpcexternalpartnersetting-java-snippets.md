---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcExternalPartnerSetting cloudPcExternalPartnerSetting = graphClient.deviceManagement().virtualEndpoint().externalPartnerSettings("b3548526-e615-3785-3118-be70b3968ec5")
	.buildRequest()
	.get();

```