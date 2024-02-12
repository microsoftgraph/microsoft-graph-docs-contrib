---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceComplianceUserOverview deviceComplianceUserOverview = new DeviceComplianceUserOverview();
deviceComplianceUserOverview.setOdataType("#microsoft.graph.deviceComplianceUserOverview");
deviceComplianceUserOverview.setPendingCount(12);
deviceComplianceUserOverview.setNotApplicableCount(2);
deviceComplianceUserOverview.setSuccessCount(12);
deviceComplianceUserOverview.setErrorCount(10);
deviceComplianceUserOverview.setFailedCount(11);
OffsetDateTime lastUpdateDateTime = OffsetDateTime.parse("2016-12-31T23:58:21.6459442-08:00");
deviceComplianceUserOverview.setLastUpdateDateTime(lastUpdateDateTime);
deviceComplianceUserOverview.setConfigurationVersion(4);
DeviceComplianceUserOverview result = graphClient.deviceManagement().deviceCompliancePolicies().byDeviceCompliancePolicyId("{deviceCompliancePolicy-id}").userStatusOverview().patch(deviceComplianceUserOverview);


```