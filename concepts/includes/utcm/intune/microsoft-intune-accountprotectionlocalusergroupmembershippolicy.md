---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

This resource configures a Intune Account Protection Local User Group Membership policy.



### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Write | String | Identity of the account protection policy. | - |
| DisplayName | Key | String | Display name of the account protection rules policy. | - |
| Description | Write | String | Description of the account protection rules policy. | - |
| Assignments | Write | AccountProtectionLocalUserGroupMembershipPolicyAssignments[] | Assignments of the Intune Policy. | - |
| LocalUserGroupCollection | Write | AccountProtectionLocalUserGroupCollection[] | Local User Group Collections of the Intune Policy. | - |
| Ensure | Write | String | Present ensures the site collection exists, absent ensures it's removed | `Present`, `Absent` |

#### AccountProtectionLocalUserGroupMembershipPolicyAssignments

##### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| dataType | Write | String | The type of the target assignment. | `#microsoft.graph.groupAssignmentTarget`, `#microsoft.graph.allLicensedUsersAssignmentTarget`, `#microsoft.graph.allDevicesAssignmentTarget`, `#microsoft.graph.exclusionGroupAssignmentTarget`, `#microsoft.graph.configurationManagerCollectionAssignmentTarget` |
| deviceAndAppManagementAssignmentFilterType | Write | String | The type of filter of the target assignment i.e. Exclude or Include. Possible values are:none, include, exclude. | `none`, `include`, `exclude` |
| deviceAndAppManagementAssignmentFilterId | Write | String | The Id of the filter for the target assignment. | - |
| groupId | Write | String | The group Id that is the target of the assignment. | - |
| groupDisplayName | Write | String | The group Display Name that is the target of the assignment. | - |
| collectionId | Write | String | The collection Id that is the target of the assignment.(ConfigMgr) | - |

#### AccountProtectionLocalUserGroupCollection

##### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Action | Write | String | The action to use for adding / removing members. | `add_update`, `remove_update`, `add_replace` |
| LocalGroups | Write | StringArray[] | The local groups to add / remove the members to / from. List of the following values: `administrators`, `users`, `guests`, `powerusers`, `remotedesktopusers`, `remotemanagementusers` | - |
| Members | Write | StringArray[] | The members to add / remove to / from the group. For AzureAD Users, use the format `AzureAD\&lt;UserPrincipalName&gt;`. For groups, use the security identifier (SID). | - |
| UserSelectionType | Write | String | The type of the selection. Either users / groups from AzureAD, or by manual identifier. | `users`, `manual` |


### Permissions

#### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

##### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Group.Read.All, DeviceManagementConfiguration.Read.All |
| Update    | Group.Read.All, DeviceManagementConfiguration.ReadWrite.All |



