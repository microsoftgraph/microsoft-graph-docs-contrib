---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleDefinition unifiedRoleDefinition = new UnifiedRoleDefinition();
unifiedRoleDefinition.setDescription("Update basic properties and permission of application registrations");
unifiedRoleDefinition.setDisplayName("ExampleCustomRole");
LinkedList<UnifiedRolePermission> rolePermissions = new LinkedList<UnifiedRolePermission>();
UnifiedRolePermission unifiedRolePermission = new UnifiedRolePermission();
LinkedList<String> allowedResourceActions = new LinkedList<String>();
allowedResourceActions.add("Microsoft.CloudPC/CloudPCs/Read");
allowedResourceActions.add("Microsoft.CloudPC/CloudPCs/Reprovision");
unifiedRolePermission.setAllowedResourceActions(allowedResourceActions);
rolePermissions.add(unifiedRolePermission);
unifiedRoleDefinition.setRolePermissions(rolePermissions);
UnifiedRoleDefinition result = graphClient.roleManagement().cloudPC().roleDefinitions().byUnifiedRoleDefinitionId("{unifiedRoleDefinition-id}").patch(unifiedRoleDefinition);


```