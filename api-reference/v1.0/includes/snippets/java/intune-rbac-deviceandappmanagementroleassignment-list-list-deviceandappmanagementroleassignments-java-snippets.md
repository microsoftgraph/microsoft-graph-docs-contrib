---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceAndAppManagementRoleAssignmentCollectionPage roleAssignments = graphClient.deviceManagement().roleAssignments()
	.buildRequest()
	.get();

```