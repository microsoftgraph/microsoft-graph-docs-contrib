---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.deviceManagement().deviceEnrollmentConfigurations("{deviceEnrollmentConfigurationId}").assignments("{enrollmentConfigurationAssignmentId}")
	.buildRequest()
	.delete();

```