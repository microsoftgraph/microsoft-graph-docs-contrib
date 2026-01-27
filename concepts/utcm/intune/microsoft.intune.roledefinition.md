---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures an Intune Role Definition.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **Id** | Write | String | The unique idenfier for an entity. Read-only. | |
| **Description** | Write | String | Description of the Role definition. | |
| **DisplayName** | Key | String | Display Name of the Role definition. | |
| **IsBuiltIn** | Write | Boolean | Type of Role. Set to True if it's built-in, or set to False if it's a custom role definition. | |
| **allowedResourceActions** | Write | StringArray[] | List of allowed resource actions | |
| **notAllowedResourceActions** | Write | StringArray[] | List of not allowed resource actions | |
| **roleScopeTagIds** | Write | StringArray[] | Id of the Scope Tags to assign | |
| **Ensure** | Write | String | Present ensures the Role exists, absent ensures it's removed. | `Present`, `Absent` |


## Permissions

### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | DeviceManagementRBAC.Read.All |
| Update    | DeviceManagementRBAC.ReadWrite.All |



