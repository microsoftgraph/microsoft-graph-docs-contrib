---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

Microsoft Entra Authentication Method Policy Fido2


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| IsAttestationEnforced | Write | Boolean | Determines whether attestation must be enforced for FIDO2 security key registration. | - |
| IsSelfServiceRegistrationAllowed | Write | Boolean | Determines if users can register new FIDO2 security keys. | - |
| KeyRestrictions | Write | MSFT_MicrosoftGraphfido2KeyRestrictions | Controls whether key restrictions are enforced on FIDO2 security keys, either allowing or disallowing certain key types as defined by Authenticator Attestation GUID (AAGUID), an identifier that indicates the type (e.g. make and model) of the authenticator. | - |
| ExcludeTargets | Write | AuthenticationMethodPolicyFido2ExcludeTarget[] | Displayname of the groups of users that are excluded from a policy. | - |
| IncludeTargets | Write | AuthenticationMethodPolicyFido2IncludeTarget[] | Displayname of the groups of users that are included from a policy. | - |
| State | Write | String | The state of the policy. Possible values are: enabled, disabled. | `enabled`, `disabled` |
| Id | Key | String | The unique identifier for an entity. Read-only. | - |
| Ensure | Write | String | Present ensures the policy exists, absent ensures it's removed. | `Present`, `Absent` |

#### MSFT_MicrosoftGraphFido2KeyRestrictions

##### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| AaGuids | Write | StringArray[] | A collection of Authenticator Attestation GUIDs. AADGUIDs define key types and manufacturers. | - |
| EnforcementType | Write | String | Enforcement type. Possible values are: allow, block. | `allow`, `block`, `unknownFutureValue` |
| IsEnforced | Write | Boolean | Determines if the configured key enforcement is enabled. | - |

#### AuthenticationMethodPolicyFido2ExcludeTarget

##### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Id | Write | String | The object identifier of an Microsoft Entra group. | - |
| TargetType | Write | String | The type of the authentication method target. Possible values are: group and unknownFutureValue. | `user`, `group`, `unknownFutureValue` |

#### AuthenticationMethodPolicyFido2IncludeTarget

##### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Id | Write | String | The object identifier of an Microsoft Entra group. | - |
| TargetType | Write | String | The type of the authentication method target. Possible values are: group and unknownFutureValue. | `user`, `group`, `unknownFutureValue` |


### Permissions

#### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Security Reader |
| Update    | Authentication Policy Administrator |


#### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

##### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Policy.Read.AuthenticationMethod, Group.Read.All |
| Update    | Policy.ReadWrite.AuthenticationMethod, Group.Read.All |



