---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

RoleAssignment roleAssignment = new RoleAssignment();
roleAssignment.setOdataType("#microsoft.graph.roleAssignment");
roleAssignment.setDisplayName("Display Name value");
roleAssignment.setDescription("Description value");
LinkedList<String> resourceScopes = new LinkedList<String>();
resourceScopes.add("Resource Scopes value");
roleAssignment.setResourceScopes(resourceScopes);
RoleAssignment result = graphClient.deviceManagement().roleDefinitions().byRoleDefinitionId("{roleDefinition-id}").roleAssignments().post(roleAssignment);


```