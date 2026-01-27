---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures RBAC Management Roles Assignments in Exchange Online.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **Name** | Key | String | The Name parameter specifies a name for the new management role assignment. The maximum length of the name is 64 characters. | |
| **Role** | Key | String | The Role parameter specifies the existing role to assign. You can use any value that uniquely identifies the role. | |
| **App** | Write | String | The App parameter specifies the service principal to assign the management role to. Specifically, the ServiceId GUID value from the output of the Get-ServicePrincipal cmdlet (for example, 6233fba6-0198-4277-892f-9275bf728bcc). | |
| **Policy** | Write | String | The Policy parameter specifies the name of the management role assignment policy to assign the management role to. | |
| **SecurityGroup** | Write | String | The SecurityGroup parameter specifies the name of the management role group or mail-enabled universal security group to assign the management role to. | |
| **User** | Write | String | The User parameter specifies the name or alias of the user to assign the management role to. | |
| **CustomRecipientWriteScope** | Write | String | The CustomRecipientWriteScope parameter specifies the existing recipient-based management scope to associate with this management role assignment. | |
| **CustomResourceScope** | Write | String | The CustomResourceScope parameter specifies the custom management scope to associate with this management role assignment. You can use any value that uniquely identifies the management scope. | |
| **ExclusiveRecipientWriteScope** | Write | String | The ExclusiveConfigWriteScope parameter specifies the exclusive configuration-based management scope to associate with the new role assignment. | |
| **RecipientAdministrativeUnitScope** | Write | String | The RecipientAdministrativeUnitScope parameter specifies the administrative unit to scope the new role assignment to. | |
| **RecipientOrganizationalUnitScope** | Write | String | The RecipientOrganizationalUnitScope parameter specifies the OU to scope the new role assignment to. If you use the RecipientOrganizationalUnitScope parameter, you can't use the CustomRecipientWriteScope or ExclusiveRecipientWriteScope parameters. | |
| **RecipientRelativeWriteScope** | Write | String | The RecipientRelativeWriteScope parameter specifies the type of restriction to apply to a recipient scope. The available types are None, Organization, MyGAL, Self, and MyDistributionGroups. The RecipientRelativeWriteScope parameter is automatically set when the CustomRecipientWriteScope or RecipientOrganizationalUnitScope parameters are used. | |
| **Ensure** | Write | String | Specify if the Management Role Assignment should exist or not. | `Present`, `Absent` |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Global Reader |
| Update    | Exchange Administrator |


### Exchange

To authenticate with Microsoft Exchange, this resource requires the following application permissions. Delegated scenarios aren't supported.

#### Roles

- Role Management, View-Only Configuration

#### Role Groups

- Organization Management

### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



