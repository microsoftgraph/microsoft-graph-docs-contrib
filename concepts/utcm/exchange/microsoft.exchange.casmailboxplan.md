---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures Client Access services (CAS) mailbox plans
in cloud-based organizations.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| **Identity** | Key | String | The Identity parameter specifies the CAS Mailbox Plan that you want to modify. | |
| **DisplayName** | Write | String | The display name of the CAS Mailbox Plan. | |
| **Ensure** | Write | String | CASMailboxPlans can't be created or removed in O365 and must be set to 'Present'. | `Present` |
| **ActiveSyncEnabled** | Write | Boolean | The ActiveSyncEnabled parameter enables or disables access to the mailbox by using Exchange Active Sync. Default is $true. | |
| **ImapEnabled** | Write | Boolean | The ImapEnabled parameter enables or disables access to the mailbox by using IMAP4 clients. The default value is $true for all CAS mailbox plans except ExchangeOnlineDeskless which is $false by default. | |
| **OwaMailboxPolicy** | Write | String | The OwaMailboxPolicy parameter specifies the Outlook on the web (formerly known as Outlook Web App) mailbox policy for the mailbox plan. The default value is OwaMailboxPolicy-Default. You can use the Get-OwaMailboxPolicy cmdlet to view the available Outlook on the web mailbox policies. | |
| **PopEnabled** | Write | Boolean | The PopEnabled parameter enables or disables access to the mailbox by using POP3 clients. Default is $true. | |


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

- Organization Client Access, View-Only Recipients, View-Only Configuration, Mail Recipients

#### Role Groups

- Organization Management

### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Least privileged permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



