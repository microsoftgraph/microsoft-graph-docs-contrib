---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleDefinition unifiedRoleDefinition = new UnifiedRoleDefinition();
unifiedRoleDefinition.setDescription("An example custom role");
unifiedRoleDefinition.setDisplayName("ExampleCustomRole");
LinkedList<UnifiedRolePermission> rolePermissions = new LinkedList<UnifiedRolePermission>();
UnifiedRolePermission unifiedRolePermission = new UnifiedRolePermission();
LinkedList<String> allowedResourceActions = new LinkedList<String>();
allowedResourceActions.add("Microsoft.CloudPC/CloudPCs/Read");
unifiedRolePermission.setAllowedResourceActions(allowedResourceActions);
rolePermissions.add(unifiedRolePermission);
unifiedRoleDefinition.setRolePermissions(rolePermissions);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("condition", "null");
unifiedRoleDefinition.setAdditionalData(additionalData);
UnifiedRoleDefinition result = graphClient.roleManagement().cloudPC().roleDefinitions().post(unifiedRoleDefinition);


```