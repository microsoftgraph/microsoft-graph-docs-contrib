---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceConfigurationAssignment deviceConfigurationAssignment = new DeviceConfigurationAssignment();
ConfigurationManagerCollectionAssignmentTarget target = new ConfigurationManagerCollectionAssignmentTarget();
target.collectionId = "Collection Id value";
deviceConfigurationAssignment.target = target;

graphClient.deviceManagement().deviceConfigurations("{deviceConfigurationId}").assignments("{deviceConfigurationAssignmentId}")
	.buildRequest()
	.patch(deviceConfigurationAssignment);

```