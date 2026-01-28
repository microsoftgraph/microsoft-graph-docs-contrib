---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

This resource configures a [Teams Voice Route](/microsoftteams/direct-routing-voice-routing).


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | Identity of the Teams Voice Route. | - |
| Description | Write | String | A description of what this online voice route is for. | - |
| NumberPattern | Write | String | A regular expression that specifies the phone numbers to which this route applies. Numbers matching this pattern will be routed according to the rest of the routing settings. | - |
| OnlinePstnGatewayList | Write | StringArray[] | This parameter contains a list of online gateways associated with this online voice route.  Each member of this list must be the service Identity of the online PSTN gateway. | - |
| OnlinePstnUsages | Write | StringArray[] | A list of online PSTN usages (such as Local, Long Distance, etc.) that can be applied to this online voice route. The PSTN usage must be an existing usage (PSTN usages can be retrieved by calling the Get-CsOnlinePstnUsage cmdlet). | - |
| Priority | Write | UInt32 | A number could resolve to multiple online voice routes. The priority determines the order in which the routes will be applied if more than one route is possible. | - |
| Ensure | Write | String | Present ensures the route exists, absent ensures it's removed. | `Present`, `Absent` |


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



