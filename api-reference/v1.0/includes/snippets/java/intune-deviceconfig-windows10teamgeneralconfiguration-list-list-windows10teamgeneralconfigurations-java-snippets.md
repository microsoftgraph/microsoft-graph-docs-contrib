---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceConfigurationCollectionPage deviceConfigurations = graphClient.deviceManagement().deviceConfigurations()
	.buildRequest()
	.get();

```