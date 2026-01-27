---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures an Hosted Content Filter Rule in Exchange Online.
Reference: https://docs.microsoft.com/en-us/powershell/module/exchange/advanced-threat-protection/new-HostedContentFilterRule?view=exchange-ps


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | The Identity parameter specifies the name of the HostedContentFilter rule that you want to modify. | - |
| HostedContentFilterPolicy | Required | String | The HostedContentFilterPolicy parameter specifies the name of the HostedContentFilter policy that's associated with the HostedContentFilter rule. | - |
| Enabled | Write | Boolean | Specify if this rule should be enabled. Default is $true. | - |
| Priority | Write | UInt32 | The Priority parameter specifies a priority value for the rule that determines the order of rule processing. A lower integer value indicates a higher priority, the value 0 is the highest priority, and rules can't have the same priority value. | - |
| Comments | Write | String | The Comments parameter specifies informative comments for the rule, such as what the rule is used for or how it has changed over time. The length of the comment can't exceed 1,024 characters. | - |
| ExceptIfRecipientDomainIs | Write | StringArray[] | The ExceptIfRecipientDomainIs parameter specifies an exception that looks for recipients with email address in the specified domains. You can specify multiple domains separated by commas. | - |
| ExceptIfSentTo | Write | StringArray[] | The ExceptIfSentTo parameter specifies an exception that looks for recipients in messages. You can use any value that uniquely identifies the recipient. | - |
| ExceptIfSentToMemberOf | Write | StringArray[] | The ExceptIfSentToMemberOf parameter specifies an exception that looks for messages sent to members of groups. You can use any value that uniquely identifies the group. | - |
| RecipientDomainIs | Write | StringArray[] | The RecipientDomainIs parameter specifies a condition that looks for recipients with email address in the specified domains. You can specify multiple domains separated by commas. | - |
| SentTo | Write | StringArray[] | The SentTo parameter specifies a condition that looks for recipients in messages. You can use any value that uniquely identifies the recipient. | - |
| SentToMemberOf | Write | StringArray[] | The SentToMemberOf parameter looks for messages sent to members of groups. You can use any value that uniquely identifies the group. | - |
| Ensure | Write | String | Specify if this rule should exist or not. | `Present`, `Absent` |


## Permissions

### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Security Reader |
| Update    | Security Administrator |


### Exchange

To authenticate with Microsoft Exchange, this resource requires the following application permissions. Delegated scenarios aren't supported.

#### Roles

- Transport Hygiene, Security Admin, View-Only Configuration, Security Reader

#### Role Groups

- Organization Management

### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


#### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



