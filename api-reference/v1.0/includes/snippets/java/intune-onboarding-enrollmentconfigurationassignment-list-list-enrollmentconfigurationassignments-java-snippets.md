---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EnrollmentConfigurationAssignmentCollectionPage assignments = graphClient.deviceManagement().deviceEnrollmentConfigurations("{deviceEnrollmentConfigurationId}").assignments()
	.buildRequest()
	.get();

```