---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

The TeamsMobilityPolicy allows Admins to control Teams mobile usage for users.


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | Specify the name of the Teams Mobility Policy. | - |
| Description | Write | String | Enables administrators to provide explanatory text about the policy. For example, the Description might indicate the users the policy should be assigned to. | - |
| IPAudioMobileMode | Write | String | When set to WifiOnly, prohibits the user from making and receiving calls or joining meetings using VoIP calls on the mobile device while on a cellular data connection. Possible values are: WifiOnly, AllNetworks. | `WifiOnly`, `AllNetworks` |
| IPVideoMobileMode | Write | String | When set to WifiOnly, prohibits the user from making and receiving video calls or enabling video in meetings using VoIP calls on the mobile device while on a cellular data connection. Possible values are: WifiOnly, AllNetworks. | `WifiOnly`, `AllNetworks` |
| MobileDialerPreference | Write | String | Determines the mobile dialer preference, possible values are: Teams, Native, UserOverride. | `Teams`, `Native`, `UserOverride` |
| Ensure | Write | String | Present ensures the instance exists, absent ensures it's removed. | `Present`, `Absent` |


### Permissions

#### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Global Reader |
| Update    | Teams Administrator |


#### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

##### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Organization.Read.All |
| Update    | Organization.Read.All |



