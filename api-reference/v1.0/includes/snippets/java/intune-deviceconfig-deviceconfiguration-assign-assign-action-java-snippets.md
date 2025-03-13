---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.deviceconfigurations.item.assign.AssignPostRequestBody assignPostRequestBody = new com.microsoft.graph.devicemanagement.deviceconfigurations.item.assign.AssignPostRequestBody();
LinkedList<DeviceConfigurationAssignment> assignments = new LinkedList<DeviceConfigurationAssignment>();
DeviceConfigurationAssignment deviceConfigurationAssignment = new DeviceConfigurationAssignment();
deviceConfigurationAssignment.setOdataType("#microsoft.graph.deviceConfigurationAssignment");
deviceConfigurationAssignment.setId("d59b6342-6342-d59b-4263-9bd542639bd5");
ConfigurationManagerCollectionAssignmentTarget target = new ConfigurationManagerCollectionAssignmentTarget();
target.setOdataType("microsoft.graph.configurationManagerCollectionAssignmentTarget");
target.setCollectionId("Collection Id value");
deviceConfigurationAssignment.setTarget(target);
assignments.add(deviceConfigurationAssignment);
assignPostRequestBody.setAssignments(assignments);
var result = graphClient.deviceManagement().deviceConfigurations().byDeviceConfigurationId("{deviceConfiguration-id}").assign().post(assignPostRequestBody);


```