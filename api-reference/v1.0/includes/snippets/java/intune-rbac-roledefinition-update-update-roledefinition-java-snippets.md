---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

RoleDefinition roleDefinition = new RoleDefinition();
roleDefinition.setOdataType("#microsoft.graph.roleDefinition");
roleDefinition.setDisplayName("Display Name value");
roleDefinition.setDescription("Description value");
LinkedList<RolePermission> rolePermissions = new LinkedList<RolePermission>();
RolePermission rolePermission = new RolePermission();
rolePermission.setOdataType("microsoft.graph.rolePermission");
LinkedList<ResourceAction> resourceActions = new LinkedList<ResourceAction>();
ResourceAction resourceAction = new ResourceAction();
resourceAction.setOdataType("microsoft.graph.resourceAction");
LinkedList<String> allowedResourceActions = new LinkedList<String>();
allowedResourceActions.add("Allowed Resource Actions value");
resourceAction.setAllowedResourceActions(allowedResourceActions);
LinkedList<String> notAllowedResourceActions = new LinkedList<String>();
notAllowedResourceActions.add("Not Allowed Resource Actions value");
resourceAction.setNotAllowedResourceActions(notAllowedResourceActions);
resourceActions.add(resourceAction);
rolePermission.setResourceActions(resourceActions);
rolePermissions.add(rolePermission);
roleDefinition.setRolePermissions(rolePermissions);
roleDefinition.setIsBuiltIn(true);
RoleDefinition result = graphClient.deviceManagement().roleDefinitions().byRoleDefinitionId("{roleDefinition-id}").patch(roleDefinition);


```