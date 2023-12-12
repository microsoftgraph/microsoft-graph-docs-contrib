---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SettingStateDeviceSummaryCollectionPage deviceSettingStateSummaries = graphClient.deviceManagement().deviceConfigurations("{deviceConfigurationId}").deviceSettingStateSummaries()
	.buildRequest()
	.get();

```