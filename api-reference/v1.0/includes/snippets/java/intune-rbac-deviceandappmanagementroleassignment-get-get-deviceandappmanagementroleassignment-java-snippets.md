---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceAndAppManagementRoleAssignment deviceAndAppManagementRoleAssignment = graphClient.deviceManagement().roleAssignments("{deviceAndAppManagementRoleAssignmentId}")
	.buildRequest()
	.get();

```