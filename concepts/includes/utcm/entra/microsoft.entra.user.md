---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

This resource allows users to create Microsoft Entra Users and assign them licenses, roles and/or groups.

When using AADGroup with AADUser, avoid specifying both AADUser->MemberOf and AADGroup->Member for the same group, as mismatched values can cause conflicts. Choose one approach. See AADGroup


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| UserPrincipalName | Key | String | The login name of the user | - |
| DisplayName | Write | String | The display name for the user | - |
| FirstName | Write | String | The first name of the user | - |
| LastName | Write | String | The last name of the user | - |
| Roles | Write | StringArray[] | The list of Microsoft Entra roles assigned to the user. | - |
| UsageLocation | Write | String | The country/region code the user is assigned to | - |
| LicenseAssignment | Write | StringArray[] | The account SKU Id for the license to be assigned to the user | - |
| Password | Write | PSCredential | The password for the account. The parameter is a PSCredential object, but only the Password component is used. When Password isn't supplied for a new resource a new random password is generated. Property is used when creating the user and not on subsequent updates. | - |
| City | Write | String | The City name of the user | - |
| Country | Write | String | The Country/region name of the user | - |
| Department | Write | String | The Department name of the user | - |
| Fax | Write | String | The Fax Number of the user | - |
| MemberOf | Write | StringArray[] | The Groups that the user is a direct member of | - |
| MobilePhone | Write | String | The Mobile Phone Number of the user | - |
| Office | Write | String | The Office Name of the user | - |
| PasswordNeverExpires | Write | Boolean | Specifies whether the user password expires periodically. Default value is false | - |
| PasswordPolicies | Write | String | Specifies password policies for the user. | - |
| PhoneNumber | Write | String | The Phone Number of the user | - |
| PostalCode | Write | String | The Postal Code of the user | - |
| PreferredLanguage | Write | String | The Preferred Language of the user | - |
| State | Write | String | Specifies the state or province where the user is located | - |
| StreetAddress | Write | String | Specifies the street address of the user | - |
| Title | Write | String | Specifies the title of the user | - |
| UserType | Write | String | Specifies the title of the user | `Guest`, `Member`, `Other`, `Viral` |
| Ensure | Write | String | Present ensures the user exists, absent ensures it's removed | `Present`, `Absent` |


### Permissions

#### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | None |
| Update    | User Administrator |


#### Microsoft Graph

To authenticate with the Microsoft Graph API, this resource requires the following application permissions. Delegated scenarios aren't supported. For more information about Microsoft Graph permissions, see [Microsoft Graph permissions reference](/graph/permissions-reference).

##### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | RoleManagement.Read.Directory, User.Read.All |
| Update    | Organization.Read.All, RoleManagement.ReadWrite.Directory, User.EnableDisableAccount.All, User.ReadWrite.All, Group.ReadWrite.All, GroupMember.ReadWrite.All |



