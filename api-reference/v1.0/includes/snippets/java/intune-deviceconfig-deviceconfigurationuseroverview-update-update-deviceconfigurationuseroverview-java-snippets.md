---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceConfigurationUserOverview deviceConfigurationUserOverview = new DeviceConfigurationUserOverview();
deviceConfigurationUserOverview.setOdataType("#microsoft.graph.deviceConfigurationUserOverview");
deviceConfigurationUserOverview.setPendingCount(12);
deviceConfigurationUserOverview.setNotApplicableCount(2);
deviceConfigurationUserOverview.setSuccessCount(12);
deviceConfigurationUserOverview.setErrorCount(10);
deviceConfigurationUserOverview.setFailedCount(11);
OffsetDateTime lastUpdateDateTime = OffsetDateTime.parse("2016-12-31T23:58:21.6459442-08:00");
deviceConfigurationUserOverview.setLastUpdateDateTime(lastUpdateDateTime);
deviceConfigurationUserOverview.setConfigurationVersion(4);
DeviceConfigurationUserOverview result = graphClient.deviceManagement().deviceConfigurations().byDeviceConfigurationId("{deviceConfiguration-id}").userStatusOverview().patch(deviceConfigurationUserOverview);


```