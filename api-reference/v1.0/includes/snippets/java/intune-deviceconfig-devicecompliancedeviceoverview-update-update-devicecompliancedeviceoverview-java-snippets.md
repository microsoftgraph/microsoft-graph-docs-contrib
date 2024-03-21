---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceComplianceDeviceOverview deviceComplianceDeviceOverview = new DeviceComplianceDeviceOverview();
deviceComplianceDeviceOverview.setOdataType("#microsoft.graph.deviceComplianceDeviceOverview");
deviceComplianceDeviceOverview.setPendingCount(12);
deviceComplianceDeviceOverview.setNotApplicableCount(2);
deviceComplianceDeviceOverview.setSuccessCount(12);
deviceComplianceDeviceOverview.setErrorCount(10);
deviceComplianceDeviceOverview.setFailedCount(11);
OffsetDateTime lastUpdateDateTime = OffsetDateTime.parse("2016-12-31T23:58:21.6459442-08:00");
deviceComplianceDeviceOverview.setLastUpdateDateTime(lastUpdateDateTime);
deviceComplianceDeviceOverview.setConfigurationVersion(4);
DeviceComplianceDeviceOverview result = graphClient.deviceManagement().deviceCompliancePolicies().byDeviceCompliancePolicyId("{deviceCompliancePolicy-id}").deviceStatusOverview().patch(deviceComplianceDeviceOverview);


```