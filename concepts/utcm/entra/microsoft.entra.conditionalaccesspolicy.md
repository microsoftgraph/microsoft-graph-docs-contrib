---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures a Microsoft Entra conditional access policy.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **DisplayName** | Key | String | The display name of the conditional access policy. | |
| **Id** | Write | String | Specifies the GUID for the Policy. | |
| **State** | Write | String | Specifies the State of the Policy. | `disabled`, `enabled`, `enabledForReportingButNotEnforced` |
| **IncludeApplications** | Write | StringArray[] | The cloud apps included in the scope of the policy. | |
| **ApplicationsFilter** | Write | String | A rule with syntax similar to membership rules for groups in Microsoft Entra ID. | |
| **ApplicationsFilterMode** | Write | String | The mode to use for the filter. Possible values are `include` or `exclude`. | `include`, `exclude` |
| **ExcludeApplications** | Write | StringArray[] | The cloud apps excluded from the scope of the policy. | |
| **IncludeUserActions** | Write | StringArray[] | The user actions included in the scope of the policy. | |
| **IncludeUsers** | Write | StringArray[] | The users included in the scope of the policy. | |
| **ExcludeUsers** | Write | StringArray[] | The users excluded from the scope of the policy. | |
| **IncludeGroups** | Write | StringArray[] | The groups included in the scope of the policy. | |
| **ExcludeGroups** | Write | StringArray[] | The groups excluded from the scope of the policy. | |
| **IncludeRoles** | Write | StringArray[] | The Microsoft Entra admin roles included in the scope of the policy. | |
| **ExcludeRoles** | Write | StringArray[] | The Microsoft Entra admin roles excluded from the scope of the policy. | |
| **IncludeGuestOrExternalUserTypes** | Write | StringArray[] | The included internal guests or external user types. A multi-valued property. Supported values are: `b2bCollaborationGuest`, `b2bCollaborationMember`, `b2bDirectConnectUser`, `internalGuest`, `otherExternalUser`, `serviceProvider`, and `unknownFutureValue`. | `none`, `internalGuest`, `b2bCollaborationGuest`, `b2bCollaborationMember`, `b2bDirectConnectUser`, `otherExternalUser`, `serviceProvider`, `unknownFutureValue` |
| **IncludeExternalTenantsMembershipKind** | Write | String | The included tenants membership kind. The possible values are: `all`, `enumerated`, `unknownFutureValue`. The value `enumerated` references an object of **conditionalAccessEnumeratedExternalTenants** derived type. | ``, `all`, `enumerated`, `unknownFutureValue` |
| **IncludeExternalTenantsMembers** | Write | StringArray[] | The collection of tenant IDs included in the scope of the conditional access policy for guests and external users. | |
| **ExcludeGuestOrExternalUserTypes** | Write | StringArray[] | The excluded internal guests or external user types. A multi-valued property. Supported values are: `b2bCollaborationGuest`, `b2bCollaborationMember`, `b2bDirectConnectUser`, `internalGuest`, `otherExternalUser`, `serviceProvider`, and `unknownFutureValue`. | `none`, `internalGuest`, `b2bCollaborationGuest`, `b2bCollaborationMember`, `b2bDirectConnectUser`, `otherExternalUser`, `serviceProvider`, `unknownFutureValue` |
| **ExcludeExternalTenantsMembershipKind** | Write | String | The excluded tenants membership kind. The possible values are: `all`, `enumerated`, `unknownFutureValue`. The value `enumerated` references an object of **conditionalAccessEnumeratedExternalTenants** derived type. | ``, `all`, `enumerated`, `unknownFutureValue` |
| **ExcludeExternalTenantsMembers** | Write | StringArray[] | The collection of tenant IDs excluded from the scope of the conditional access policy for guests and external users. | |
| **IncludePlatforms** | Write | StringArray[] | The client device platforms included in the scope of the policy. | |
| **ExcludePlatforms** | Write | StringArray[] | The client device platforms excluded from the scope of the policy. | |
| **IncludeLocations** | Write | StringArray[] | The Microsoft Entra named locations included in the scope of the policy. | |
| **ExcludeLocations** | Write | StringArray[] | The Microsoft Entra named locations excluded from the scope of the policy. | |
| **DeviceFilterMode** | Write | String | The client device filter mode of the policy. | `include`, `exclude` |
| **DeviceFilterRule** | Write | String | The client device filter rule of the policy. | |
| **UserRiskLevels** | Write | StringArray[] | The Microsoft Entra ID Protection user risk levels in scope of the policy. | |
| **SignInRiskLevels** | Write | StringArray[] | The Microsoft Entra ID Protection sign-in risk levels in scope of the policy. | |
| **ClientAppTypes** | Write | StringArray[] | The client app types in scope of the policy. | |
| **GrantControlOperator** | Write | String | The operator to use for grant controls. | `AND`, `OR` |
| **BuiltInControls** | Write | StringArray[] | The list of built-in grant controls to be applied by the policy. | |
| **ApplicationEnforcedRestrictionsIsEnabled** | Write | Boolean | Specifies whether application enforced restrictions are enabled in the policy. | |
| **CloudAppSecurityIsEnabled** | Write | Boolean | Specifies whether Cloud App Security is enforced by the policy. | |
| **CloudAppSecurityType** | Write | String | Specifies the Cloud App Security control enforced by the policy. | |
| **SignInFrequencyValue** | Write | UInt32 | The sign-in frequency time in the specified unit enforced by the policy. | |
| **TermsOfUse** | Write | String | The display name of the terms of use to assign. | |
| **CustomAuthenticationFactors** | Write | StringArray[] | The custom controls assigned to the grant property of this policy. | |
| **SignInFrequencyType** | Write | String | The sign-in frequency unit (days or hours) used by the policy. | `Days`, `Hours`, `` |
| **SignInFrequencyIsEnabled** | Write | Boolean | Specifies whether sign-in frequency is enforced by the policy. | |
| **SignInFrequencyInterval** | Write | String | The sign-in frequency interval. Possible values are: `timeBased`, `everyTime`, and `unknownFutureValue`. | `timeBased`, `everyTime`, `unknownFutureValue` |
| **PersistentBrowserIsEnabled** | Write | Boolean | Specifies whether browser persistence is controlled by the policy. | |
| **PersistentBrowserMode** | Write | String | Specifies the browser persistence control enforced by the policy. | `Always`, `Never`, `` |
| **AuthenticationStrength** | Write | String | The name of the associated authentication strength policy. | |
| **TransferMethods** | Write | String | The names of the associated authentication flow transfer methods. Possible values are: `deviceCodeFlow`, `authenticationTransfer`, or `deviceCodeFlow, authenticationTransfer`. | |
| **AuthenticationContexts** | Write | StringArray[] | The authentication context class references. | |
| **Ensure** | Write | String | Specifies whether the conditional access policy should exist or not. | `Present`, `Absent` |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Security Reader |
| Update    | Conditional Access Administrator |


### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Agreement.Read.All, Application.Read.All, Group.Read.All, Policy.Read.All, RoleManagement.Read.Directory, User.Read.All, CustomSecAttributeDefinition.Read.All |
| Update    | Agreement.Read.All, Application.Read.All, Group.Read.All, Policy.Read.All, Policy.ReadWrite.ConditionalAccess, RoleManagement.Read.Directory, User.Read.All, CustomSecAttributeDefinition.Read.All |



