---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceAndAppManagementRoleDefinition roleDefinition = new DeviceAndAppManagementRoleDefinition();
roleDefinition.displayName = "Display Name value";
roleDefinition.description = "Description value";
LinkedList<RolePermission> rolePermissionsList = new LinkedList<RolePermission>();
RolePermission rolePermissions = new RolePermission();
LinkedList<ResourceAction> resourceActionsList = new LinkedList<ResourceAction>();
ResourceAction resourceActions = new ResourceAction();
LinkedList<String> allowedResourceActionsList = new LinkedList<String>();
allowedResourceActionsList.add("Allowed Resource Actions value");
resourceActions.allowedResourceActions = allowedResourceActionsList;
LinkedList<String> notAllowedResourceActionsList = new LinkedList<String>();
notAllowedResourceActionsList.add("Not Allowed Resource Actions value");
resourceActions.notAllowedResourceActions = notAllowedResourceActionsList;
resourceActionsList.add(resourceActions);
rolePermissions.resourceActions = resourceActionsList;
rolePermissionsList.add(rolePermissions);
roleDefinition.rolePermissions = rolePermissionsList;
roleDefinition.isBuiltIn = true;

graphClient.deviceManagement().roleDefinitions()
	.buildRequest()
	.post(roleDefinition);

```