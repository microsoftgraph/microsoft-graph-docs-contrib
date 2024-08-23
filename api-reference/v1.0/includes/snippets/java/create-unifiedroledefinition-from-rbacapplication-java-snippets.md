---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleDefinition unifiedRoleDefinition = new UnifiedRoleDefinition();
unifiedRoleDefinition.setDescription("Update basic properties of application registrations");
unifiedRoleDefinition.setDisplayName("Application Registration Support Administrator");
LinkedList<UnifiedRolePermission> rolePermissions = new LinkedList<UnifiedRolePermission>();
UnifiedRolePermission unifiedRolePermission = new UnifiedRolePermission();
LinkedList<String> allowedResourceActions = new LinkedList<String>();
allowedResourceActions.add("microsoft.directory/applications/basic/read");
unifiedRolePermission.setAllowedResourceActions(allowedResourceActions);
rolePermissions.add(unifiedRolePermission);
unifiedRoleDefinition.setRolePermissions(rolePermissions);
unifiedRoleDefinition.setIsEnabled(true);
UnifiedRoleDefinition result = graphClient.roleManagement().directory().roleDefinitions().post(unifiedRoleDefinition);


```