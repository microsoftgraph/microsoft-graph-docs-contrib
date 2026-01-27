---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures the Azure Active Directory Authorization Policy.

The policy is managed using the BETA API. Some properties are added in the API but not in the resource


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **IsSingleInstance** | Key | String | Only valid value is 'Yes.' | `Yes` |
| **DisplayName** | Write | String | Display name for this policy. | |
| **Description** | Write | String | Description of this policy. | |
| **AllowedToSignUpEmailBasedSubscriptions** | Write | Boolean | Boolean Indicates whether users can sign up for email based subscriptions. | |
| **AllowedToUseSSPR** | Write | Boolean | Boolean Indicates whether the Self-Serve Password Reset feature can be used by users on the tenant. | |
| **AllowEmailVerifiedUsersToJoinOrganization** | Write | Boolean | Boolean Indicates whether a user can join the tenant by email validation. | |
| **AllowInvitesFrom** | Write | String | Indicates who can invite external users to the organization. Possible values are: None, AdminsAndGuestInviters, AdminsGuestInvitersAndAllMembers, Everyone. Everyone is the default setting for all cloud environments except US Government. | `None`, `AdminsAndGuestInviters`, `AdminsGuestInvitersAndAllMembers`, `Everyone` |
| **BlockMsolPowershell** | Write | Boolean | Boolean To disable the use of MSOL PowerShell, set this property to true. This disables user-based access to the legacy service endpoint used by MSOL PowerShell. This doesn't affect Azure AD Connect or Microsoft Graph. | |
| **DefaultUserRoleAllowedToCreateApps** | Write | Boolean | Boolean Indicates whether the default user role can create applications. | |
| **DefaultUserRoleAllowedToCreateSecurityGroups** | Write | Boolean | Boolean Indicates whether the default user role can create security groups. | |
| **DefaultUserRoleAllowedToReadBitlockerKeysForOwnedDevice** | Write | Boolean | Indicates whether the registered owners of a device can read their own BitLocker recovery keys with default user role. | |
| **DefaultUserRoleAllowedToCreateTenants** | Write | Boolean | Indicates whether the default user role can create tenants. This setting corresponds to the Restrict nonadmin users from creating tenants setting in the User settings menu in the Azure portal. When this setting is false, users assigned the Tenant Creator role can still create tenants. | |
| **DefaultUserRoleAllowedToReadOtherUsers** | Write | Boolean | Boolean Indicates whether the default user role can read other users. | |
| **GuestUserRole** | Write | String | The role that should be granted to guest users. Refer to List unifiedRoleDefinitions to find the list of available role templates. Only supported roles today are User, Guest User, and Restricted Guest User (2af84b1e-32c8-42b7-82bc-daa82404023b). | `Guest`, `RestrictedGuest`, `User` |
| **PermissionGrantPolicyIdsAssignedToDefaultUserRole** | Write | StringArray[] | String collection Indicates if user consent to apps is allowed, and if it's, which permission to grant consent and which app consent policy (permissionGrantPolicy) govern the permission for users to grant consent. Value should be in the format managePermissionGrantsForSelf.{id}, where {id} is the id of a built-in or custom app consent policy. An empty list indicates user consent to apps is disabled. | |
| **Ensure** | Write | String | Specify that the Azure Authorization Policy should exist. | `Present` |


## Azure AD Permissions

To authenticate via Microsoft Graph, this resource required the following Application permissions:

* **Automate**
  * Policy.Read.All
  * Policy.ReadWrite.Authorization

* **Export**
  * Policy.Read.All

NOTE: All permissions listed require admin consent.

## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | None |
| Update    | Privileged Role Administrator |


### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Policy.Read.All |
| Update    | Policy.ReadWrite.Authorization |



