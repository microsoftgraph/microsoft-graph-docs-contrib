---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EnrollmentConfigurationAssignment enrollmentConfigurationAssignment = graphClient.deviceManagement().deviceEnrollmentConfigurations("{deviceEnrollmentConfigurationId}").assignments("{enrollmentConfigurationAssignmentId}")
	.buildRequest()
	.get();

```