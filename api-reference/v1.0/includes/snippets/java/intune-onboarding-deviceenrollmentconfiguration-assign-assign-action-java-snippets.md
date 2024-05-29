---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.deviceenrollmentconfigurations.item.assign.AssignPostRequestBody assignPostRequestBody = new com.microsoft.graph.devicemanagement.deviceenrollmentconfigurations.item.assign.AssignPostRequestBody();
LinkedList<EnrollmentConfigurationAssignment> enrollmentConfigurationAssignments = new LinkedList<EnrollmentConfigurationAssignment>();
EnrollmentConfigurationAssignment enrollmentConfigurationAssignment = new EnrollmentConfigurationAssignment();
enrollmentConfigurationAssignment.setOdataType("#microsoft.graph.enrollmentConfigurationAssignment");
enrollmentConfigurationAssignment.setId("705b021c-021c-705b-1c02-5b701c025b70");
ConfigurationManagerCollectionAssignmentTarget target = new ConfigurationManagerCollectionAssignmentTarget();
target.setOdataType("microsoft.graph.configurationManagerCollectionAssignmentTarget");
target.setCollectionId("Collection Id value");
enrollmentConfigurationAssignment.setTarget(target);
enrollmentConfigurationAssignments.add(enrollmentConfigurationAssignment);
assignPostRequestBody.setEnrollmentConfigurationAssignments(enrollmentConfigurationAssignments);
graphClient.deviceManagement().deviceEnrollmentConfigurations().byDeviceEnrollmentConfigurationId("{deviceEnrollmentConfiguration-id}").assign().post(assignPostRequestBody);


```