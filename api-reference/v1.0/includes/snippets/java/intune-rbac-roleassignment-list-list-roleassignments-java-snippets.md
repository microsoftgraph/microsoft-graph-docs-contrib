---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RoleAssignmentCollectionPage roleAssignments = graphClient.deviceManagement().roleDefinitions("{roleDefinitionId}").roleAssignments()
	.buildRequest()
	.get();

```