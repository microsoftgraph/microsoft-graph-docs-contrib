---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

Manages the Teams App Permission Policies.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | Unique identifier to be assigned to the new Teams app permission policy. Use the 'Global' Identity if you wish to assign this policy to the entire tenant. | - |
| Description | Write | String | Enables administrators to provide explanatory text to accompany a Teams app permission policy. | - |
| GlobalCatalogAppsType | Write | String | The types of apps for the Global Catalog. | - |
| PrivateCatalogAppsType | Write | String | The types of apps for the Private Catalog. | - |
| DefaultCatalogAppsType | Write | String | The types of apps for the Default Catalog. | - |
| GlobalCatalogApps | Write | StringArray[] | The list of apps for the Global Catalog. | - |
| PrivateCatalogApps | Write | StringArray[] | The list of apps for the Private Catalog. | - |
| DefaultCatalogApps | Write | StringArray[] | The list of apps for the Default Catalog. | - |
| Ensure | Write | String | Present ensures the instance exists, absent ensures it's removed. | `Present`, `Absent` |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Global Reader |
| Update    | Teams Administrator |


### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Organization.Read.All |
| Update    | Organization.Read.All |



