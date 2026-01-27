---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

This resource configures an Hosted Content Filter Rule in Exchange Online.
Reference: https://docs.microsoft.com/en-us/powershell/module/exchange/new-hostedoutboundspamfilterrule?view=exchange-ps


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | The Identity parameter specifies the name of the HostedOutboundSpamFilter rule that you want to modify. | - |
| HostedOutboundSpamFilterPolicy | Required | String | The HostedOutboundSpamFilterPolicy parameter specifies the name of the HostedOutboundSpamFilter policy that's associated with the HostedOutboundSpamFilter rule. | - |
| Enabled | Write | Boolean | Specify if this rule should be enabled. Default is $true. | - |
| Priority | Write | UInt32 | The Priority parameter specifies a priority value for the rule that determines the order of rule processing. A lower integer value indicates a higher priority, the value 0 is the highest priority, and rules can't have the same priority value. | - |
| Comments | Write | String | The Comments parameter specifies informative comments for the rule, such as what the rule is used for or how it has changed over time. The length of the comment can't exceed 1,024 characters. | - |
| ExceptIfSenderDomainIs | Write | StringArray[] | The ExceptIfSenderDomainIs parameter specifies an exception that looks for senders with email address in the specified domains. You can specify multiple domains separated by commas. | - |
| ExceptIfFrom | Write | StringArray[] | The ExceptIfFrom parameter specifies an exception that looks for messages from specific senders. You can use any value that uniquely identifies the sender. | - |
| ExceptIfFromMemberOf | Write | StringArray[] | The ExceptIfFromMemberOf parameter specifies an exception that looks for messages sent by group members. You can use any value that uniquely identifies the group. | - |
| SenderDomainIs | Write | StringArray[] | The SenderDomainIs parameter specifies a condition that looks for senders with email address in the specified domains. You can specify multiple domains separated by commas. | - |
| From | Write | StringArray[] | The From parameter specifies a condition that looks for messages from specific senders. You can use any value that uniquely identifies the sender. | - |
| FromMemberOf | Write | StringArray[] | The FromMemberOf parameter specifies a condition that looks for messages sent by group members. You can use any value that uniquely identifies the group. | - |
| Ensure | Write | String | Specify if this rule should exist or not. | `Present`, `Absent` |


### Permissions

#### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the UTCM (Unified Tenant Configuration Management) service principal:

| Operation | Least privileged role |
|-----------|-----------------------|
| Read      | Security Reader |
| Update    | Security Administrator |


#### Exchange

To authenticate with Microsoft Exchange, this resource requires the following application permissions. Delegated scenarios aren't supported.

##### Roles

- Transport Hygiene, Security Admin, View-Only Configuration, Security Reader

##### Role Groups

- Organization Management

#### Office 365 Exchange Online

To authenticate with Exchange Online, this resource requires the following application permissions. Delegated scenarios aren't supported.


##### Application permissions

| Operation | Supported permissions |
|-----------|------------------------------|
| Read      | Exchange.ManageAsApp |
| Update    | None |



