---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource allows to configure Journal Rules in Exchange Online.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **Name** | Key | String | Name of the Journal Rule | |
| **JournalEmailAddress** | Key | String | The JournalEmailAddress parameter specifies a recipient object to which journal reports are sent. You can use any value that uniquely identifies the recipient. | |
| **Recipient** | Write | String | The Recipient parameter specifies the SMTP address of a mailbox, contact, or distribution group to journal. If you specify a distribution group, all recipients in that distribution group are journaled. All messages sent to or from a recipient are journaled. | |
| **Enabled** | Write | Boolean | Specifies whether the Journal Rule is enabled or not. | |
| **RuleScope** | Write | String | The Scope parameter specifies the scope of email messages to which the journal rule is applied | `Global`, `Internal`, `External` |
| **Ensure** | Write | String | Present ensures the rule exists, Absent that it does not. | `Present`, `Absent` |


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

- Compliance Admin, View-Only Configuration, Journaling

#### Role Groups

- Organization Management, Compliance Management

### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



