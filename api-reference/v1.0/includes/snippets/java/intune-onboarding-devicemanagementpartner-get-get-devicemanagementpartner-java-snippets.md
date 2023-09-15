---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceManagementPartner deviceManagementPartner = graphClient.deviceManagement().deviceManagementPartners("{deviceManagementPartnerId}")
	.buildRequest()
	.get();

```