---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resources implements a Teams workload policy.



## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | Unique identity for the Teams workload policy | - |
| AllowCalling | Write | Boolean | Allows calling. | - |
| AllowCallingPinned | Write | Boolean | Allows pinning a call. | - |
| AllowMeeting | Write | Boolean | Allows meetins. | - |
| AllowMeetingPinned | Write | Boolean | Allows pinning meetings. | - |
| AllowMessaging | Write | Boolean | Allows messaging. | - |
| AllowMessagingPinned | Write | Boolean | Allows pinning a message. | - |
| Description | Write | String | Description of the policy. | - |
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



