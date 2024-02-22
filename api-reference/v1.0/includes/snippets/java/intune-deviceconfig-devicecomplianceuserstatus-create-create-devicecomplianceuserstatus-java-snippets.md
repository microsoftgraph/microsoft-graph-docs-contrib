---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceComplianceUserStatus deviceComplianceUserStatus = new DeviceComplianceUserStatus();
deviceComplianceUserStatus.setOdataType("#microsoft.graph.deviceComplianceUserStatus");
deviceComplianceUserStatus.setUserDisplayName("User Display Name value");
deviceComplianceUserStatus.setDevicesCount(12);
deviceComplianceUserStatus.setStatus(ComplianceStatus.NotApplicable);
OffsetDateTime lastReportedDateTime = OffsetDateTime.parse("2017-01-01T00:00:17.7769392-08:00");
deviceComplianceUserStatus.setLastReportedDateTime(lastReportedDateTime);
deviceComplianceUserStatus.setUserPrincipalName("User Principal Name value");
DeviceComplianceUserStatus result = graphClient.deviceManagement().deviceCompliancePolicies().byDeviceCompliancePolicyId("{deviceCompliancePolicy-id}").userStatuses().post(deviceComplianceUserStatus);


```