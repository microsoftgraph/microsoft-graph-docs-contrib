---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EnrollmentConfigurationAssignment enrollmentConfigurationAssignment = new EnrollmentConfigurationAssignment();
enrollmentConfigurationAssignment.setOdataType("#microsoft.graph.enrollmentConfigurationAssignment");
ConfigurationManagerCollectionAssignmentTarget target = new ConfigurationManagerCollectionAssignmentTarget();
target.setOdataType("microsoft.graph.configurationManagerCollectionAssignmentTarget");
target.setCollectionId("Collection Id value");
enrollmentConfigurationAssignment.setTarget(target);
EnrollmentConfigurationAssignment result = graphClient.deviceManagement().deviceEnrollmentConfigurations().byDeviceEnrollmentConfigurationId("{deviceEnrollmentConfiguration-id}").assignments().byEnrollmentConfigurationAssignmentId("{enrollmentConfigurationAssignment-id}").patch(enrollmentConfigurationAssignment);


```