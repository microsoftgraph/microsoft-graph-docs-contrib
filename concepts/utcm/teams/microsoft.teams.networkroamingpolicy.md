---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

New-CsTeamsNetworkRoamingPolicy allows IT Admins to create policies for Network Roaming and Bandwidth Control experiences in Microsoft Teams.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | Specify the name of the Teams Network Roaming Policy. | - |
| AllowIPVideo | Write | Boolean | Determines whether video is enabled in a user's meetings or calls. Set this to TRUE to allow the user to share their video. Set this to FALSE to prohibit the user from sharing their video. | - |
| Description | Write | String | Description of the new policy to be created. | - |
| MediaBitRateKb | Write | UInt64 | Determines the media bit rate for audio/video/app sharing transmissions in meetings. | - |
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



