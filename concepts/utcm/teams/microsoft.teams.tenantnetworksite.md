---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

As an Admin, you can use the Windows PowerShell command, New-CsTenantNetworkSite to define network sites. Network sites are defined as a collection of IP subnets. Each network site must be associated with a network region. Tenant network site is used for Location Based Routing.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | Unique identifier for the network site to be created. | - |
| Description | Write | String | Provide a description of the network site to identify purpose of creating it. | - |
| EmergencyCallingPolicy | Write | String | This parameter is used to assign a custom emergency calling policy to a network site | - |
| EmergencyCallRoutingPolicy | Write | String | This parameter is used to assign a custom emergency call routing policy to a network site | - |
| EnableLocationBasedRouting | Write | Boolean | This parameter determines whether the current site is enabled for location based routing. | - |
| LocationPolicy | Write | String | LocationPolicy is the identifier for the location policy which the current network site is associating to. | - |
| NetworkRegionID | Write | String | NetworkRegionID is the identifier for the network region which the current network site is associating to. | - |
| NetworkRoamingPolicy | Write | String | NetworkRoamingPolicy is the identifier for the network roaming policy to which the network site will associate to. | - |
| SiteAddress | Write | String | The address of current network site. | - |
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



