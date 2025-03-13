---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceComplianceSettingState deviceComplianceSettingState = new DeviceComplianceSettingState();
deviceComplianceSettingState.setOdataType("#microsoft.graph.deviceComplianceSettingState");
deviceComplianceSettingState.setSetting("Setting value");
deviceComplianceSettingState.setSettingName("Setting Name value");
deviceComplianceSettingState.setDeviceId("Device Id value");
deviceComplianceSettingState.setDeviceName("Device Name value");
deviceComplianceSettingState.setUserId("User Id value");
deviceComplianceSettingState.setUserEmail("User Email value");
deviceComplianceSettingState.setUserName("User Name value");
deviceComplianceSettingState.setUserPrincipalName("User Principal Name value");
deviceComplianceSettingState.setDeviceModel("Device Model value");
deviceComplianceSettingState.setState(ComplianceStatus.NotApplicable);
OffsetDateTime complianceGracePeriodExpirationDateTime = OffsetDateTime.parse("2016-12-31T23:56:44.951111-08:00");
deviceComplianceSettingState.setComplianceGracePeriodExpirationDateTime(complianceGracePeriodExpirationDateTime);
DeviceComplianceSettingState result = graphClient.deviceManagement().deviceCompliancePolicySettingStateSummaries().byDeviceCompliancePolicySettingStateSummaryId("{deviceCompliancePolicySettingStateSummary-id}").deviceComplianceSettingStates().post(deviceComplianceSettingState);


```