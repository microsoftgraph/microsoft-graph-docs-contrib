---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CrossTenantAccessSettings crossTenantAccessSettings = new CrossTenantAccessSettings();
crossTenantAccessSettings.networkPacketTaggingStatus = Status.ENABLED;

graphClient.networkAccess().settings().crossTenantAccess()
	.buildRequest()
	.patch(crossTenantAccessSettings);

```