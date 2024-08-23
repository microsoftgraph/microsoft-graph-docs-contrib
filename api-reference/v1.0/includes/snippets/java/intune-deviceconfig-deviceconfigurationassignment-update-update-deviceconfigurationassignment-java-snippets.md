---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceConfigurationAssignment deviceConfigurationAssignment = new DeviceConfigurationAssignment();
deviceConfigurationAssignment.setOdataType("#microsoft.graph.deviceConfigurationAssignment");
ConfigurationManagerCollectionAssignmentTarget target = new ConfigurationManagerCollectionAssignmentTarget();
target.setOdataType("microsoft.graph.configurationManagerCollectionAssignmentTarget");
target.setCollectionId("Collection Id value");
deviceConfigurationAssignment.setTarget(target);
DeviceConfigurationAssignment result = graphClient.deviceManagement().deviceConfigurations().byDeviceConfigurationId("{deviceConfiguration-id}").assignments().byDeviceConfigurationAssignmentId("{deviceConfigurationAssignment-id}").patch(deviceConfigurationAssignment);


```