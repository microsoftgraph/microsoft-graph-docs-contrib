---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

Use this resource to create a new Teams enhanced encryption policy.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | Unique identifier assigned to the Teams enhanced encryption policy. | - |
| CallingEndtoEndEncryptionEnabledType | Write | String | Determines whether End-to-end encrypted calling is available for the user in Teams. Set this to DisabledUserOverride to allow user to turn on End-to-end encrypted calls. Set this to Disabled to prohibit. | - |
| Description | Write | String | Enables administrators to provide explanatory text to accompany a Teams enhanced encryption policy. | - |
| MeetingEndToEndEncryption | Write | String | N/A | - |
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



