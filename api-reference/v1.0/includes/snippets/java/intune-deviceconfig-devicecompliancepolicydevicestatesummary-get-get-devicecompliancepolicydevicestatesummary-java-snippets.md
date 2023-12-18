---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceCompliancePolicyDeviceStateSummary deviceCompliancePolicyDeviceStateSummary = graphClient.deviceManagement().deviceCompliancePolicyDeviceStateSummary()
	.buildRequest()
	.get();

```