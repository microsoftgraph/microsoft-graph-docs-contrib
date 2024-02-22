---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceComplianceDeviceStatus deviceComplianceDeviceStatus = new DeviceComplianceDeviceStatus();
deviceComplianceDeviceStatus.setOdataType("#microsoft.graph.deviceComplianceDeviceStatus");
deviceComplianceDeviceStatus.setDeviceDisplayName("Device Display Name value");
deviceComplianceDeviceStatus.setUserName("User Name value");
deviceComplianceDeviceStatus.setDeviceModel("Device Model value");
OffsetDateTime complianceGracePeriodExpirationDateTime = OffsetDateTime.parse("2016-12-31T23:56:44.951111-08:00");
deviceComplianceDeviceStatus.setComplianceGracePeriodExpirationDateTime(complianceGracePeriodExpirationDateTime);
deviceComplianceDeviceStatus.setStatus(ComplianceStatus.NotApplicable);
OffsetDateTime lastReportedDateTime = OffsetDateTime.parse("2017-01-01T00:00:17.7769392-08:00");
deviceComplianceDeviceStatus.setLastReportedDateTime(lastReportedDateTime);
deviceComplianceDeviceStatus.setUserPrincipalName("User Principal Name value");
DeviceComplianceDeviceStatus result = graphClient.deviceManagement().deviceCompliancePolicies().byDeviceCompliancePolicyId("{deviceCompliancePolicy-id}").deviceStatuses().byDeviceComplianceDeviceStatusId("{deviceComplianceDeviceStatus-id}").patch(deviceComplianceDeviceStatus);


```