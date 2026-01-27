---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

As an Admin, you can use the Windows PowerShell command, New-CsTenantNetworkRegion to define network regions. A network region interconnects various parts of a network across multiple geographic areas. The RegionID parameter is a logical name that represents the geography of the region, and has no dependencies or restrictions. Tenant network region is used for Location Based Routing.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | Unique identifier for the network region to be created. | - |
| CentralSite | Write | String | Name of the associated Central Site. | - |
| Description | Write | String | Provide a description of the network region to identify purpose of creating it. | - |
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

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Organization.Read.All |
| Update    | Organization.Read.All |



