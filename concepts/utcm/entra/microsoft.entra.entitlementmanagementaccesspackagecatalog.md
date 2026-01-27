---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures a Microsoft Entra ID Governance entitlement management access package catalog.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| DisplayName | Key | String | The display name of the access package catalog. | - |
| Id | Write | String | The unique identifier of the access package catalog. | - |
| CatalogStatus | Write | String | Indicates whether the access packages are available for management. Has the value `Published` if available. | - |
| CatalogType | Write | String | The type of the catalog. Possible values are: `UserManaged` or `ServiceDefault`. | `UserManaged`, `ServiceDefault` |
| Description | Write | String | The description of the access package catalog. | - |
| IsExternallyVisible | Write | Boolean | Indicates whether the access packages in this catalog can be requested by users outside of the tenant. | - |
| Ensure | Write | String | Specifies whether the catalog should exist or not. `Present` ensures the catalog exists; `Absent` ensures the catalog is removed. | `Present`, `Absent` |


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



