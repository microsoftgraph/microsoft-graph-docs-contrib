---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures a Teams Voice Routing Policy.

More information: https://docs.microsoft.com/en-us/microsoftteams/manage-voice-routing-policies


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | Identity of the Teams Voice Routing Policy. | - |
| OnlinePstnUsages | Write | StringArray[] | A list of online PSTN usages (such as Local or Long Distance) that can be applied to this online voice routing policy. The online PSTN usage must be an existing usage (PSTN usages can be retrieved by calling the Get-CsOnlinePstnUsage cmdlet). | - |
| Description | Write | String | Enables administrators to provide explanatory text to accompany an online voice routing policy. For example, the Description might include information about the users the policy should be assigned to. | - |
| Ensure | Write | String | Present ensures the policy exists, absent ensures it's removed. | `Present`, `Absent` |


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



