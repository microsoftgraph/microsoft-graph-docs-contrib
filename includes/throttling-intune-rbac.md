---
author: "dougeby"
ms.localizationpriority: high
ms.prod: "msgraph"
ms.topic: include
---
<!-- markdownlint-disable MD041 -->
<!-- this file is auto-generated don't edit it manually! -->
#### Intune rbac service limits

| Request type | Limit per tenant for all apps | Limit per app per tenant |
| ------------ | ----------------------------- | ------------------------ |
| POST, PUT, DELETE, PATCH | 200 requests per 20 seconds | 100 requests per 20 seconds |
| Any | 2000 requests per 20 seconds | 1000 requests per 20 seconds |

The preceding limits apply to the following resources:  

| <!-- fake header--> |
|---|
| <ul> <li> [deviceAndAppManagementRoleAssignment](/graph/api/resources/intune-rbac-deviceandappmanagementroleassignment) <li> [deviceAndAppManagementRoleDefinition](/graph/api/resources/intune-rbac-deviceandappmanagementroledefinition) <li> [resourceOperation](/graph/api/resources/intune-rbac-resourceoperation) <li> [roleAssignment](/graph/api/resources/intune-rbac-roleassignment) <li> [roleDefinition](/graph/api/resources/intune-rbac-roledefinition) <li> [roleScopeTag](/graph/api/resources/intune-rbac-rolescopetag) <li> [roleScopeTagAutoAssignment](/graph/api/resources/intune-rbac-rolescopetagautoassignment) </ul> |
