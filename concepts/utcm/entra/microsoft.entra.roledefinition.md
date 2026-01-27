---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures an Microsoft Entra role definition.
To configure custom roles, you require an Microsoft Entra Premium P1 license.
The account used to configure role definitions based on this resource needs either to be a
"Global Administrator" or a "Privileged role administrator".


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| DisplayName | Key | String | Specifies a display name for the role definition. | - |
| Id | Write | String | Specifies Id for the role definition. | - |
| Description | Write | String | Specifies a description for the role definition. | - |
| ResourceScopes | Write | StringArray[] | Specifies the resource scopes for the role definition. | - |
| IsEnabled | Required | Boolean | Specifies whether the role definition is enabled. | - |
| RolePermissions | Required | StringArray[] | Specifies permissions for the role definition. | - |
| TemplateId | Write | String | Specifies template id for the role definition. | - |
| Version | Write | String | Specifies version for the role definition. | - |
| Ensure | Write | String | Specify if the Microsoft Entra Role definition should exist or not. | `Present`, `Absent` |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | None |
| Update    | Privileged Role Administrator |


### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | RoleManagement.Read.Directory |
| Update    | RoleManagement.ReadWrite.Directory |



