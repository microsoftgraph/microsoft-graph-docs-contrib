---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

The TeamsCallParkPolicy controls whether or not users are able to leverage the call park feature in Microsoft Teams. Call park allows enterprise voice customers to place a call on hold and then perform a number of actions on that call: transfer to another department, retrieve via the same phone, or retrieve via a different Teams phone. The New-CsTeamsCallParkPolicy resource lets you create a new custom policy that can then be assigned to one or more specific users.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **Identity** | Key | String | A unique identifier for the policy - this will be used to retrieve the policy later on to assign it to specific users. | |
| **AllowCallPark** | Write | Boolean | If set to true, customers will be able to leverage the call park feature to place calls on hold and then decide how the call should be handled - transferred to another department, retrieved using the same phone, or retrieved using a different phone. | |
| **Description** | Write | String | Description of the Teams Call Park Policy. | |
| **ParkTimeoutSeconds** | Write | UInt64 | Specify the number of seconds to wait before ringing the parker when the parked call hasn't been picked up. Value can be from 120 to 1800 (seconds). | |
| **PickupRangeEnd** | Write | UInt64 | Specify the maximum value that a rendered pickup code can take. Value can be from 10 to 9999. Note: PickupRangeStart must be smaller than PickupRangeEnd. | |
| **PickupRangeStart** | Write | UInt64 | Specify the minimum value that a rendered pickup code can take. Value can be from 10 to 9999. | |
| **Ensure** | Write | String | Present ensures the instance exists, absent ensures it's removed. | `Present`, `Absent` |


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



