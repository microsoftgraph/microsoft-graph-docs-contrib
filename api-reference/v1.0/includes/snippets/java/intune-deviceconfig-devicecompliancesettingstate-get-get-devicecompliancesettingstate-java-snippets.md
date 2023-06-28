---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceComplianceSettingState deviceComplianceSettingState = graphClient.deviceManagement().deviceCompliancePolicySettingStateSummaries("{deviceCompliancePolicySettingStateSummaryId}").deviceComplianceSettingStates("{deviceComplianceSettingStateId}")
	.buildRequest()
	.get();

```