---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceComplianceDeviceOverview deviceComplianceDeviceOverview = new DeviceComplianceDeviceOverview();
deviceComplianceDeviceOverview.pendingCount = 12;
deviceComplianceDeviceOverview.notApplicableCount = 2;
deviceComplianceDeviceOverview.successCount = 12;
deviceComplianceDeviceOverview.errorCount = 10;
deviceComplianceDeviceOverview.failedCount = 11;
deviceComplianceDeviceOverview.lastUpdateDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:58:21.6459442+00:00");
deviceComplianceDeviceOverview.configurationVersion = 4;

graphClient.deviceManagement().deviceCompliancePolicies("{deviceCompliancePolicyId}").deviceStatusOverview()
	.buildRequest()
	.patch(deviceComplianceDeviceOverview);

```