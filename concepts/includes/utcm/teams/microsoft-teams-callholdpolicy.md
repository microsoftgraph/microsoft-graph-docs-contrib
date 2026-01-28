---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

Creates a new Teams call hold policy in your tenant. The Teams call hold policy is used to customize the call hold experience for Teams clients.


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | Unique identifier to be assigned to the new Teams call hold policy. Use the 'Global' Identity if you wish to assign this policy to the entire tenant. | - |
| AudioFileId | Write | String | A string representing the ID referencing an audio file uploaded via the Import-CsOnlineAudioFile cmdlet. | - |
| Description | Write | String | Enables administrators to provide explanatory text to accompany a Teams call hold policy. | - |
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



