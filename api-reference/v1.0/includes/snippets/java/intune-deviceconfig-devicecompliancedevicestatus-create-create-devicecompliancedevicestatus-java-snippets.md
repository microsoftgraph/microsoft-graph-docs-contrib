---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceComplianceDeviceStatus deviceComplianceDeviceStatus = new DeviceComplianceDeviceStatus();
deviceComplianceDeviceStatus.deviceDisplayName = "Device Display Name value";
deviceComplianceDeviceStatus.userName = "User Name value";
deviceComplianceDeviceStatus.deviceModel = "Device Model value";
deviceComplianceDeviceStatus.complianceGracePeriodExpirationDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:56:44.951111+00:00");
deviceComplianceDeviceStatus.status = ComplianceStatus.NOT_APPLICABLE;
deviceComplianceDeviceStatus.lastReportedDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T08:00:17.7769392+00:00");
deviceComplianceDeviceStatus.userPrincipalName = "User Principal Name value";

graphClient.deviceManagement().deviceCompliancePolicies("{deviceCompliancePolicyId}").deviceStatuses()
	.buildRequest()
	.post(deviceComplianceDeviceStatus);

```