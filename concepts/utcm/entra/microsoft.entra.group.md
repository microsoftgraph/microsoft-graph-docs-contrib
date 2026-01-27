---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures an Azure Active Directory group. IMPORTANT: It does not support mail enabled security groups or mail enabled groups that are not unified or dynamic groups.

If using with AADUser, be aware that if AADUser->MemberOf is being specified and the referenced group is configured with AADGroup->Member then a conflict may arise if the two don't match. It's usually best to choose only one of them. See AADUser


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **DisplayName** | Key | String | DisplayName of the Azure Active Directory Group | |
| **MailNickname** | Key | String | Specifies a mail nickname for the group. | |
| **Description** | Write | String | Specifies a description for the group. | |
| **Id** | Write | String | Specifies an ID for the group. | |
| **Owners** | Write | StringArray[] | User Service Principal values for the group's owners. | |
| **Members** | Write | StringArray[] | User Service Principal values for the group's members. | |
| **GroupAsMembers** | Write | StringArray[] | Displayname values for the groups member of the group. | |
| **MemberOf** | Write | StringArray[] | DisplayName values for the groups that this group is a member of. | |
| **GroupTypes** | Write | StringArray[] | Specifies that the group is a dynamic group. To create a dynamic group, specify a value of DynamicMembership. | |
| **MembershipRule** | Write | String | Specifies the membership rule for a dynamic group. | |
| **MembershipRuleProcessingState** | Write | String | Specifies the rule processing state. The acceptable values for this parameter are: On. Process the group rule or Paused. Stop processing the group rule. | `On`, `Paused` |
| **SecurityEnabled** | Required | Boolean | Specifies whether the group is security enabled. For security groups, this value must be $True. | |
| **MailEnabled** | Required | Boolean | Specifies whether this group is mail enabled. Currently, you can't create mail enabled groups in Azure AD. | |
| **IsAssignableToRole** | Write | Boolean | Specifies whether this group can be assigned a role. Only available when creating a group and can't be modified after group is created. | |
| **AssignedToRole** | Write | StringArray[] | DisplayName values for the roles that the group is assigned to. | |
| **Visibility** | Write | String | This parameter determines the visibility of the group's content and members list. | `Public`, `Private`, `HiddenMembership` |
| **AssignedLicenses** | Write | GroupLicense[] | List of Licenses assigned to the group. | |
| **Ensure** | Write | String | Specify if the Azure AD Group should exist or not. | `Present`, `Absent` |

### GroupLicense

#### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **DisabledPlans** | Write | StringArray[] | A collection of the unique identifiers for plans that have been disabled. | |
| **SkuId** | Write | String | The unique identifier for the SKU. | |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | None |
| Update    | None |


### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Application.Read.All, Device.Read.All, Directory.Read.All, Group.Read.All, ReportSettings.Read.All |
| Update    | Application.Read.All, Device.Read.All, Directory.ReadWrite.All, Group.ReadWrite.All, Organization.Read.All, RoleManagement.ReadWrite.Directory, User.Read.All, ReportSettings.ReadWrite.All |



