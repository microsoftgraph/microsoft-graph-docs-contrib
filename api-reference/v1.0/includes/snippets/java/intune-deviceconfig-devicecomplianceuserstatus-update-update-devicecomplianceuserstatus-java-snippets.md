---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceComplianceUserStatus deviceComplianceUserStatus = new DeviceComplianceUserStatus();
deviceComplianceUserStatus.userDisplayName = "User Display Name value";
deviceComplianceUserStatus.devicesCount = 12;
deviceComplianceUserStatus.status = ComplianceStatus.NOT_APPLICABLE;
deviceComplianceUserStatus.lastReportedDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T08:00:17.7769392+00:00");
deviceComplianceUserStatus.userPrincipalName = "User Principal Name value";

graphClient.deviceManagement().deviceCompliancePolicies("{deviceCompliancePolicyId}").userStatuses("{deviceComplianceUserStatusId}")
	.buildRequest()
	.patch(deviceComplianceUserStatus);

```