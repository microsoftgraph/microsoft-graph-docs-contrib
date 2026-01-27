---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

Use this resource to modify the settings of mailbox plans in the cloud-based service.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **Identity** | Key | String | The Identity parameter specifies the Mailbox Plan that you want to modify. | |
| **DisplayName** | Write | String | The display name of the mailbox plan. | |
| **Ensure** | Write | String | MailboxPlans can't be created/removed in O365.  This must be set to 'Present' | `Present` |
| **IssueWarningQuota** | Write | String | The IssueWarningQuota parameter specifies the warning threshold for the size of the mailboxes that are created or enabled using the mailbox plan. | |
| **MaxReceiveSize** | Write | String | The MaxReceiveSize parameter specifies the maximum size of a message that can be sent to the mailbox. | |
| **MaxSendSize** | Write | String | The MaxSendSize parameter specifies the maximum size of a message that can be sent by the mailbox. | |
| **ProhibitSendQuota** | Write | String | The ProhibitSendQuota parameter specifies a size limit for the mailbox. | |
| **ProhibitSendReceiveQuota** | Write | String | The ProhibitSendReceiveQuota parameter specifies a size limit for the mailbox. | |
| **RetainDeletedItemsFor** | Write | String | The RetainDeletedItemsFor parameter specifies the length of time to keep soft-deleted items for the mailbox. | |
| **RetentionPolicy** | Write | String | The RetentionPolicy parameter specifies the retention policy that's applied to the mailbox. | |
| **RoleAssignmentPolicy** | Write | String | The RoleAssignmentPolicy parameter specifies the role assignment policy that's applied to the mailbox. | |


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



