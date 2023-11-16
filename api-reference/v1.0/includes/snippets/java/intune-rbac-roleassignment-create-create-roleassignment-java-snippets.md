---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

RoleAssignment roleAssignment = new RoleAssignment();
roleAssignment.displayName = "Display Name value";
roleAssignment.description = "Description value";
LinkedList<String> resourceScopesList = new LinkedList<String>();
resourceScopesList.add("Resource Scopes value");
roleAssignment.resourceScopes = resourceScopesList;

graphClient.deviceManagement().roleDefinitions("{roleDefinitionId}").roleAssignments()
	.buildRequest()
	.post(roleAssignment);

```