---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures an Azure AD Administrative Unit.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **DisplayName** | Key | String | DisplayName of the Administrative Unit | |
| **Id** | Write | String | Object-Id of the Administrative Unit | |
| **Description** | Write | String | Description of the Administrative Unit | |
| **Visibility** | Write | String | Visibility of the Administrative Unit. Specify HiddenMembership if members of the AU are hidden | |
| **MembershipType** | Write | String | Specify membership type. Possible values are Assigned and Dynamic. The functionality is currently in preview. | |
| **MembershipRule** | Write | String | Specify membership rule. Requires that MembershipType is set to Dynamic. The functionality is currently in preview. | |
| **MembershipRuleProcessingState** | Write | String | Specify dynamic membership-rule processing-state. Valid values are 'On' and 'Paused'. Requires that MembershipType is set to Dynamic. The functionality is currently in preview. | |
| **Members** | Write | MSFT_MicrosoftGraphMember[] | Specify members. Only specify if MembershipType is NOT set to Dynamic | |
| **ScopedRoleMembers** | Write | MSFT_MicrosoftGraphScopedRoleMembership[] | Specify Scoped Role Membership. Note: Any groups must be role-enabled | |
| **Ensure** | Write | String | Present ensures the Administrative Unit exists, absent ensures it's removed. | `Present`, `Absent` |

### MSFT_MicrosoftGraphMember

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **Identity** | Write | String | Identity of member. For users, specify a UserPrincipalName. For groups, devices and service principals, specify DisplayName | |
| **Type** | Write | String | Specify User, Group, or Device to interpret the identity for Members. Specify User, Group, or ServicePrincipal for ScopedRoleMembers. | `User`, `Group`, `Device`, `ServicePrincipal` |

### MSFT_MicrosoftGraphScopedRoleMembership

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **RoleName** | Write | String | Name of the Azure AD Role that is assigned. See https://learn.microsoft.com/en-us/azure/active-directory/roles/admin-units-assign-roles#roles-that-can-be-assigned-with-administrative-unit-scope | |
| **RoleMemberInfo** | Write | MSFT_MicrosoftGraphMember | Member that is assigned to the scoped role. Note: Any groups must be role-enabled | |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Security Reader |
| Update    | Privileged Role Administrator |


### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | AdministrativeUnit.Read.All, RoleManagement.Read.Directory |
| Update    | AdministrativeUnit.ReadWrite.All, Application.Read.All, Device.Read.All, Group.Read.All, RoleManagement.Read.Directory, User.Read.All |



