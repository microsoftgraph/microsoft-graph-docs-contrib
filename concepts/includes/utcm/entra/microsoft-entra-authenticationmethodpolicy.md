---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

Microsoft Entra Authentication Method Policy


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Description | Write | String | A description of the policy. | - |
| DisplayName | Key | String | The name of the policy. | - |
| PolicyMigrationState | Write | String | The state of migration of the authentication methods policy from the legacy multifactor authentication and self-service password reset (SSPR) policies. The possible values are: premigration - means the authentication methods policy is used for authentication only, legacy policies are respected. migrationInProgress - means the authentication methods policy is used for both authentication and SSPR, legacy policies are respected. migrationComplete - means the authentication methods policy is used for authentication and SSPR, legacy policies are ignored. unknownFutureValue - Evolvable enumeration sentinel value. Don't use. | `preMigration`, `migrationInProgress`, `migrationComplete`, `unknownFutureValue` |
| PolicyVersion | Write | String | The version of the policy in use. | - |
| ReconfirmationInDays | Write | UInt32 | Days before the user is asked to reconfirm their method. | - |
| RegistrationEnforcement | Write | MSFT_MicrosoftGraphregistrationEnforcement | Enforce registration at sign-in time. This property can be used to remind users to set up targeted authentication methods. | - |
| SystemCredentialPreferences | Write | MSFT_MicrosoftGraphsystemCredentialPreferences | Prompt users with their most-preferred credential for multifactor authentication. | - |
| Id | Write | String | The unique identifier for an entity. Read-only. | - |
| Ensure | Write | String | Present ensures the policy exists, absent ensures it's removed. | `Present` |

#### MSFT_MicrosoftGraphRegistrationEnforcement

##### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| AuthenticationMethodsRegistrationCampaign | Write | MSFT_MicrosoftGraphAuthenticationMethodsRegistrationCampaign | Run campaigns to remind users to set up targeted authentication methods. | - |

#### MSFT_MicrosoftGraphAuthenticationMethodsRegistrationCampaign

##### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| ExcludeTargets | Write | MSFT_MicrosoftGraphExcludeTarget[] | Users and groups of users that are excluded from being prompted to set up the authentication method. | - |
| IncludeTargets | Write | MSFT_MicrosoftGraphAuthenticationMethodsRegistrationCampaignIncludeTarget[] | Users and groups of users that are prompted to set up the authentication method. | - |
| SnoozeDurationInDays | Write | UInt32 | Specifies the number of days that the user sees a prompt again if they select 'Not now' and snoozes the prompt. Minimum 0 days. Maximum: 14 days. If the value is '0', the user is prompted during every MFA attempt. | - |
| State | Write | String | Enable or disable the feature. Possible values are: default, enabled, disabled, unknownFutureValue. The default value is used when the configuration isn't explicitly set and uses the default behavior of Microsoft Entra for the setting. The default value is disabled. | `default`, `enabled`, `disabled`, `unknownFutureValue` |

#### AuthenticationMethodPolicyExcludeTarget

##### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Id | Write | String | The object identifier of an Microsoft Entra group. | - |
| TargetType | Write | String | The type of the authentication method target. Possible values are: group and unknownFutureValue. | `user`, `group`, `unknownFutureValue` |

#### AuthenticationMethodPolicyIncludeTarget

##### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Id | Write | String | The ID of the entity targeted. | - |
| TargetType | Write | String | The kind of entity targeted. Possible values are: user, group. | `user`, `group`, `unknownFutureValue` |

#### MSFT_MicrosoftGraphExcludeTarget

##### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Id | Write | String | The object identifier of an Microsoft Entra user or group. | - |
| TargetType | Write | String | The type of the authentication method target. Possible values are: user, group, unknownFutureValue. | `user`, `group`, `unknownFutureValue` |

#### MSFT_MicrosoftGraphAuthenticationMethodsRegistrationCampaignIncludeTarget

##### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Id | Write | String | The object identifier of an Microsoft Entra user or group. | - |
| TargetedAuthenticationMethod | Write | String | The authentication method that the user is prompted to register. The value must be microsoftAuthenticator. | - |
| TargetType | Write | String | The type of the authentication method target. Possible values are: user, group, unknownFutureValue. | `user`, `group`, `unknownFutureValue` |

#### MSFT_MicrosoftGraphSystemCredentialPreferences

##### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| ExcludeTargets | Write | AuthenticationMethodPolicyExcludeTarget[] | Users and groups excluded from the preferred authentication method experience of the system. | - |
| IncludeTargets | Write | AuthenticationMethodPolicyIncludeTarget[] | Users and groups included in the preferred authentication method experience of the system. | - |
| State | Write | String | Indicates whether the feature is enabled or disabled. Possible values are: default, enabled, disabled, unknownFutureValue. The default value is used when the configuration isn't explicitly set, and uses the default behavior of Microsoft Entra for the setting. The default value is disabled. | `default`, `enabled`, `disabled`, `unknownFutureValue` |


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
| Read      | Policy.Read.AuthenticationMethod |
| Update    | Policy.ReadWrite.AuthenticationMethod |



