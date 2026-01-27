---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures the Microsoft Entra Token Lifetime Policies


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **DisplayName** | Key | String | DisplayName of the Policy | |
| **Id** | Write | String | ObjectID of the Policy. | |
| **Description** | Write | String | Description of the Policy. | |
| **Definition** | Write | StringArray[] | Definition of the Policy. | |
| **IsOrganizationDefault** | Write | Boolean | IsOrganizationDefault of the Policy. | |
| **Ensure** | Write | String | Specify if the Microsoft Entra Policy should exist or not. | `Present`, `Absent` |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | None |
| Update    | Application Administrator |


### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Policy.Read.All |
| Update    | Policy.ReadWrite.ApplicationConfiguration |



