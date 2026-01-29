---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

This resource allows users to create Office 365 Shared Mailboxes.


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| DisplayName | Key | String | The display name of the Shared Mailbox | - |
| Identity | Write | String | The unique identifier of the Shared Mailbox | - |
| PrimarySMTPAddress | Write | String | The primary email address of the Shared Mailbox | - |
| Alias | Write | String | The alias of the Shared Mailbox | - |
| EmailAddresses | Write | StringArray[] | The EmailAddresses parameter specifies all the email addresses (proxy addresses) for the Shared Mailbox | - |
| Ensure | Write | String | Present ensures the group exists, absent ensures it's removed | `Present`, `Absent` |


### Permissions

#### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Global Reader |
| Update    | Exchange Administrator |


#### Exchange

To authenticate with Microsoft Exchange, this resource requires the following application permissions. Delegated scenarios aren't supported.

##### Roles

- Mail Enabled Public Folders, MyName, Public Folders, Compliance Admin, User Options, Message Tracking, View-Only Recipients, Role Management, Legal Hold, Audit Logs, Retention Management, Distribution Groups, Move Mailboxes, Information Rights Management, Mail Recipient Creation, Reset Password, View-Only Audit Logs, Mail Recipients, Mailbox Search, UM Mailboxes, Security Group Creation and Membership, Mailbox Import Export, MyMailboxDelegation, MyDisplayName

##### Role Groups

- Organization Management

#### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


##### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



