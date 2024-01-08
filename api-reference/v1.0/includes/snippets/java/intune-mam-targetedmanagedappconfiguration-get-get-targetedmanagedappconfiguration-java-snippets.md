---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TargetedManagedAppConfiguration targetedManagedAppConfiguration = graphClient.deviceAppManagement().targetedManagedAppConfigurations("{targetedManagedAppConfigurationId}")
	.buildRequest()
	.get();

```