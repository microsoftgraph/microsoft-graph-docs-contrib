---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SettingStateDeviceSummary settingStateDeviceSummary = graphClient.deviceManagement().deviceConfigurations("{deviceConfigurationId}").deviceSettingStateSummaries("{settingStateDeviceSummaryId}")
	.buildRequest()
	.get();

```