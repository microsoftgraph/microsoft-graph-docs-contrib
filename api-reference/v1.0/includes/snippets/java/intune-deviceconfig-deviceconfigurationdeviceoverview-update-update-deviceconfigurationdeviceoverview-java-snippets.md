---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceConfigurationDeviceOverview deviceConfigurationDeviceOverview = new DeviceConfigurationDeviceOverview();
deviceConfigurationDeviceOverview.setOdataType("#microsoft.graph.deviceConfigurationDeviceOverview");
deviceConfigurationDeviceOverview.setPendingCount(12);
deviceConfigurationDeviceOverview.setNotApplicableCount(2);
deviceConfigurationDeviceOverview.setSuccessCount(12);
deviceConfigurationDeviceOverview.setErrorCount(10);
deviceConfigurationDeviceOverview.setFailedCount(11);
OffsetDateTime lastUpdateDateTime = OffsetDateTime.parse("2016-12-31T23:58:21.6459442-08:00");
deviceConfigurationDeviceOverview.setLastUpdateDateTime(lastUpdateDateTime);
deviceConfigurationDeviceOverview.setConfigurationVersion(4);
DeviceConfigurationDeviceOverview result = graphClient.deviceManagement().deviceConfigurations().byDeviceConfigurationId("{deviceConfiguration-id}").deviceStatusOverview().patch(deviceConfigurationDeviceOverview);


```