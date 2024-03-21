---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

IosUpdateDeviceStatus iosUpdateDeviceStatus = new IosUpdateDeviceStatus();
iosUpdateDeviceStatus.setOdataType("#microsoft.graph.iosUpdateDeviceStatus");
iosUpdateDeviceStatus.setInstallStatus(IosUpdatesInstallStatus.Available);
iosUpdateDeviceStatus.setOsVersion("Os Version value");
iosUpdateDeviceStatus.setDeviceId("Device Id value");
iosUpdateDeviceStatus.setUserId("User Id value");
iosUpdateDeviceStatus.setDeviceDisplayName("Device Display Name value");
iosUpdateDeviceStatus.setUserName("User Name value");
iosUpdateDeviceStatus.setDeviceModel("Device Model value");
OffsetDateTime complianceGracePeriodExpirationDateTime = OffsetDateTime.parse("2016-12-31T23:56:44.951111-08:00");
iosUpdateDeviceStatus.setComplianceGracePeriodExpirationDateTime(complianceGracePeriodExpirationDateTime);
iosUpdateDeviceStatus.setStatus(ComplianceStatus.NotApplicable);
OffsetDateTime lastReportedDateTime = OffsetDateTime.parse("2017-01-01T00:00:17.7769392-08:00");
iosUpdateDeviceStatus.setLastReportedDateTime(lastReportedDateTime);
iosUpdateDeviceStatus.setUserPrincipalName("User Principal Name value");
IosUpdateDeviceStatus result = graphClient.deviceManagement().iosUpdateStatuses().byIosUpdateDeviceStatusId("{iosUpdateDeviceStatus-id}").patch(iosUpdateDeviceStatus);


```