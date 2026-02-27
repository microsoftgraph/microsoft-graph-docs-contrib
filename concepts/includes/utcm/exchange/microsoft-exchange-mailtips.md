---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

This resource allows to configure Mailtips behaviors in Exchange Online.


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| IsSingleInstance | Key | String | Only valid value is 'Yes'. | `Yes` |
| MailTipsAllTipsEnabled | Write | Boolean | Specifies whether MailTips are enabled. | - |
| MailTipsGroupMetricsEnabled | Write | Boolean | Specifies whether MailTips that rely on group metrics data are enabled. | - |
| MailTipsLargeAudienceThreshold | Write | UInt32 | Specifies what a large audience is. | - |
| MailTipsMailboxSourcedTipsEnabled | Write | Boolean | Specifies whether MailTips that rely on mailbox data (out-of-office or full mailbox) are enabled. | - |
| MailTipsExternalRecipientsTipsEnabled | Write | Boolean | Specifies whether MailTips for external recipients are enabled. | - |
| Ensure | Write | String | Specifies if this MailTip should exist. | `Present`, `Absent` |


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

- Mail Tips, View-Only Configuration, Organization Configuration, Federated Sharing, Public Folders, Team Mailboxes, Compliance Admin, Recipient Policies, Remote and Accepted Domains, Distribution Groups, Mail Recipients

##### Role Groups

- Organization Management



