---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IosCustomConfiguration deviceConfiguration = new IosCustomConfiguration();
deviceConfiguration.description = "Description value";
deviceConfiguration.displayName = "Display Name value";
deviceConfiguration.version = 7;
deviceConfiguration.payloadName = "Payload Name value";
deviceConfiguration.payloadFileName = "Payload File Name value";
deviceConfiguration.payload = Base64.getDecoder().decode("cGF5bG9hZA==");

graphClient.deviceManagement().deviceConfigurations("{deviceConfigurationId}")
	.buildRequest()
	.patch(deviceConfiguration);

```