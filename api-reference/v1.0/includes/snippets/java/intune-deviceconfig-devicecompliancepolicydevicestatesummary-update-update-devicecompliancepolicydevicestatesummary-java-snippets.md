---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceCompliancePolicyDeviceStateSummary deviceCompliancePolicyDeviceStateSummary = new DeviceCompliancePolicyDeviceStateSummary();
deviceCompliancePolicyDeviceStateSummary.inGracePeriodCount = 2;
deviceCompliancePolicyDeviceStateSummary.configManagerCount = 2;
deviceCompliancePolicyDeviceStateSummary.unknownDeviceCount = 2;
deviceCompliancePolicyDeviceStateSummary.notApplicableDeviceCount = 8;
deviceCompliancePolicyDeviceStateSummary.compliantDeviceCount = 4;
deviceCompliancePolicyDeviceStateSummary.remediatedDeviceCount = 5;
deviceCompliancePolicyDeviceStateSummary.nonCompliantDeviceCount = 7;
deviceCompliancePolicyDeviceStateSummary.errorDeviceCount = 0;
deviceCompliancePolicyDeviceStateSummary.conflictDeviceCount = 3;

graphClient.deviceManagement().deviceCompliancePolicyDeviceStateSummary()
	.buildRequest()
	.patch(deviceCompliancePolicyDeviceStateSummary);

```