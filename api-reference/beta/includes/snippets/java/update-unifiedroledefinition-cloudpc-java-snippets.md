---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleDefinition unifiedRoleDefinition = new UnifiedRoleDefinition();
unifiedRoleDefinition.description = "Update basic properties and permission of application registrations";
unifiedRoleDefinition.displayName = "ExampleCustomRole";
LinkedList<UnifiedRolePermission> rolePermissionsList = new LinkedList<UnifiedRolePermission>();
UnifiedRolePermission rolePermissions = new UnifiedRolePermission();
LinkedList<String> allowedResourceActionsList = new LinkedList<String>();
allowedResourceActionsList.add("Microsoft.CloudPC/CloudPCs/Read");
allowedResourceActionsList.add("Microsoft.CloudPC/CloudPCs/Reprovision");
rolePermissions.allowedResourceActions = allowedResourceActionsList;
rolePermissionsList.add(rolePermissions);
unifiedRoleDefinition.rolePermissions = rolePermissionsList;

graphClient.roleManagement().cloudPC().roleDefinitions("b7f5ddc1-b7dc-4d37-abce-b9d6fc15ffff")
	.buildRequest()
	.patch(unifiedRoleDefinition);

```