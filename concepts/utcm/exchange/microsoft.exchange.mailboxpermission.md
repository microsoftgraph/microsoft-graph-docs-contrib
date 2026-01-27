---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

Use this resource to modify the permissions of mailbox.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **Identity** | Key | String | The Identity parameter specifies the mailbox where you want to assign permissions to the user. You can use any value that uniquely identifies the mailbox. | |
| **AccessRights** | Required | StringArray[] | The AccessRights parameter specifies the permission that you want to add for the user on the mailbox. Valid values are: ChangeOwner, ChangePermission, DeleteItem, ExternalAccount, FullAccess and ReadPermission. | |
| **User** | Key | String | The User parameter specifies who gets the permissions on the mailbox. | |
| **InheritanceType** | Key | String | The InheritanceType parameter specifies how permissions are inherited by folders in the mailbox. Valid values are: None, All, Children, Descendents, SelfAndChildren. | `None`, `All`, `Children`, `Descendents`, `SelfAndChildren` |
| **Owner** | Write | String | The Owner parameter specifies the owner of the mailbox object. | |
| **Deny** | Write | Boolean | The Deny switch specifies that the permissions you're adding are Deny permissions. | |
| **Ensure** | Write | String | Determines wheter or not the permission should exist on the mailbox. | `Present` |


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

- Unified Messaging, View-Only Recipients, Mail Recipient Creation, Mail Recipients, UM Mailboxes

#### Role Groups

- Organization Management

### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



