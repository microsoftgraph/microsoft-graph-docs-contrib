---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EnrollmentConfigurationAssignment enrollmentConfigurationAssignment = new EnrollmentConfigurationAssignment();
ConfigurationManagerCollectionAssignmentTarget target = new ConfigurationManagerCollectionAssignmentTarget();
target.collectionId = "Collection Id value";
enrollmentConfigurationAssignment.target = target;

graphClient.deviceManagement().deviceEnrollmentConfigurations("{deviceEnrollmentConfigurationId}").assignments("{enrollmentConfigurationAssignmentId}")
	.buildRequest()
	.patch(enrollmentConfigurationAssignment);

```