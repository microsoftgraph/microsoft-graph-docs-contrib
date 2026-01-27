---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

Microsoft Entra Authentication Method Policy Voice


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| IsOfficePhoneAllowed | Write | Boolean | true if users can register office phones, otherwise, false. | - |
| ExcludeTargets | Write | AuthenticationMethodPolicyVoiceExcludeTarget[] | Displayname of the groups of users that are excluded from a policy. | - |
| IncludeTargets | Write | AuthenticationMethodPolicyVoiceIncludeTarget[] | Displayname of the groups of users that are included from a policy. | - |
| State | Write | String | The state of the policy. Possible values are: enabled, disabled. | `enabled`, `disabled` |
| Id | Key | String | The unique identifier for an entity. Read-only. | - |
| Ensure | Write | String | Present ensures the policy exists, absent ensures it's removed. | `Present`, `Absent` |

### AuthenticationMethodPolicyVoiceExcludeTarget

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Id | Write | String | The object identifier of an Microsoft Entra group. | - |
| TargetType | Write | String | The type of the authentication method target. Possible values are: group and unknownFutureValue. | `user`, `group`, `unknownFutureValue` |

### AuthenticationMethodPolicyVoiceIncludeTarget

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Id | Write | String | The object identifier of an Microsoft Entra group. | - |
| TargetType | Write | String | The type of the authentication method target. Possible values are: group and unknownFutureValue. | `user`, `group`, `unknownFutureValue` |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Security Reader |
| Update    | Authentication Policy Administrator |


### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Policy.Read.AuthenticationMethod, Group.Read.All |
| Update    | Policy.ReadWrite.AuthenticationMethod, Group.Read.All |



