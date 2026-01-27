---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures a Microsoft Entra ID Governance entitlement management access package.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| DisplayName | Key | String | The display name of the access package. | - |
| Id | Write | String | The Id of the access package. | - |
| CatalogId | Write | String | Identifier of the access package catalog referencing this access package. | - |
| Description | Write | String | The description of the access package. | - |
| IsHidden | Write | Boolean | Whether the access package is hidden from the requestor. | - |
| IsRoleScopesVisible | Write | Boolean | Indicates whether role scopes are visible. | - |
| AccessPackageResourceRoleScopes | Write | MSFT_AccessPackageResourceRoleScope[] | The resources and roles included in the access package. | - |
| IncompatibleAccessPackages | Write | StringArray[] | The access packages whose assigned users are ineligible to be assigned this access package. | - |
| AccessPackagesIncompatibleWith | Write | StringArray[] | The access packages that are incompatible with this package. | - |
| IncompatibleGroups | Write | StringArray[] | The groups whose members are ineligible to be assigned this access package. | - |
| Ensure | Write | String | Present ensures the policy exists, absent ensures the policy is removed. | `Present`, `Absent` |

### MSFT_AccessPackageResourceRoleScope

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Id | Write | String | The unique identifier of the resource role scope. | - |
| AccessPackageResourceOriginId | Write | String | The origin identifier of the resource. | - |
| AccessPackageResourceRoleDisplayName | Write | String | The display name of the resource role. | - |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Security Reader |
| Update    | Identity Governance Administrator |


### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | EntitlementManagement.Read.All |
| Update    | EntitlementManagement.ReadWrite.All |



