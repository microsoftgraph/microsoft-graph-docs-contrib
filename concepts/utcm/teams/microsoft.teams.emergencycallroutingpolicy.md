---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures the Teams Emergency Call Routing Policies.

More information: https://docs.microsoft.com/en-us/microsoftteams/manage-emergency-call-routing-policies


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | Identity of the Teams Emergency Call Routing Policy. | - |
| Description | Write | String | Description of the Teams Emergency Call Routing Policy. | - |
| EmergencyNumbers | Write | MSFT_TeamsEmergencyNumber[] | Emergency number(s) associated with the policy. | - |
| AllowEnhancedEmergencyServices | Write | Boolean | Flag to enable Enhanced Emergency Services | - |
| Ensure | Write | String | Present ensures the policy exists, absent ensures it's removed. | `Present`, `Absent` |

### MSFT_TeamsEmergencyNumber

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| EmergencyDialString | Write | String | Specifies the emergency phone number. | - |
| EmergencyDialMask | Write | String | For each Teams emergency number, you can specify zero or more emergency dial masks. A dial mask is a number that you want to translate into the value of the emergency dial number value when it's dialed. | - |
| OnlinePSTNUsage | Write | String | Specify the online public switched telephone network (PSTN) usage | - |


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



