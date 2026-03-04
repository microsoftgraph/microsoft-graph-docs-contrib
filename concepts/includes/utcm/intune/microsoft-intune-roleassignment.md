---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

This resource configures an Intune Role Assignment.


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Id | Write | String | The unique idenfier for an entity. Read-only. | - |
| Description | Write | String | Description of the Role Assignment. | - |
| DisplayName | Key | String | The display or friendly name of the role Assignment. | - |
| ResourceScopes | Write | StringArray[] | List of ids of role scope member security groups. These are IDs from Microsoft Entra. Ignored if ScopeType is not 'ResourceScope' | - |
| ResourceScopesDisplayNames | Write | StringArray[] | List of DisplayName of role scope member security groups. These are Displayname from Microsoft Entra. Ignored if ScopeType is not 'ResourceScope' | - |
| ScopeType | Write | String | Specifies the type of scope for a Role Assignment. Default type 'ResourceScope' allows assignment of ResourceScopes. Possible values are: resourceScope, allDevices, allLicensedUsers, allDevicesAndLicensedUsers. | - |
| Members | Write | StringArray[] | The list of ids of role member security groups. These are IDs from Microsoft Entra. | - |
| MembersDisplayNames | Write | StringArray[] | The list of Displaynames of role member security groups. These are Displaynamnes from Microsoft Entra. | - |
| RoleDefinition | Write | String | The Role Definition Id. | - |
| RoleDefinitionDisplayName | Write | String | The Role Definition Displayname. | - |
| Ensure | Write | String | Present ensures the Role exists, absent ensures it's removed. | `Present`, `Absent` |


### Permissions

#### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

##### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Group.Read.All, DeviceManagementRBAC.Read.All |
| Update    | Group.Read.All, DeviceManagementRBAC.ReadWrite.All |



