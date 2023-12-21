---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RoleAssignment roleAssignment = graphClient.deviceManagement().roleDefinitions("{roleDefinitionId}").roleAssignments("{roleAssignmentId}")
	.buildRequest()
	.get();

```