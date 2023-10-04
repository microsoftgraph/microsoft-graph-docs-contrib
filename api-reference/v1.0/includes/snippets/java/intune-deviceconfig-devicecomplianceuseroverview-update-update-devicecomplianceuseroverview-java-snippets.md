---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceComplianceUserOverview deviceComplianceUserOverview = new DeviceComplianceUserOverview();
deviceComplianceUserOverview.pendingCount = 12;
deviceComplianceUserOverview.notApplicableCount = 2;
deviceComplianceUserOverview.successCount = 12;
deviceComplianceUserOverview.errorCount = 10;
deviceComplianceUserOverview.failedCount = 11;
deviceComplianceUserOverview.lastUpdateDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:58:21.6459442+00:00");
deviceComplianceUserOverview.configurationVersion = 4;

graphClient.deviceManagement().deviceCompliancePolicies("{deviceCompliancePolicyId}").userStatusOverview()
	.buildRequest()
	.patch(deviceComplianceUserOverview);

```