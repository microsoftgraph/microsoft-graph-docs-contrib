---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-administration"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

## Description

This resource configures the settings of the outbound spam filter policy
in your cloud-based organization.


## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | The Identity parameter specifies the name of the policy that you want to modify. there's only one policy named 'Default' | - |
| AdminDisplayName | Write | String | The AdminDisplayName parameter specifies a description for the policy. | - |
| BccSuspiciousOutboundAdditionalRecipients | Write | StringArray[] | The BccSuspiciousOutboundAdditionalRecipients parameter specifies the recipients to add to the Bcc field of outgoing spam messages. Valid input for this parameter is an email address. Separate multiple email addresses with commas. | - |
| BccSuspiciousOutboundMail | Write | Boolean | The BccSuspiciousOutboundMail parameter enables or disables adding recipients to the Bcc field of outgoing spam messages. Valid input for this parameter is $true or $false. The default value is $false. You specify the additional recipients using the BccSuspiciousOutboundAdditionalRecipients parameter. | - |
| NotifyOutboundSpam | Write | Boolean | The NotifyOutboundSpam parameter enables or disables sending notification messages to administrators when an outgoing message is determined to be spam. Valid input for this parameter is $true or $false. The default value is $false. You specify the administrators to notify by using the NotifyOutboundSpamRecipients parameter. | - |
| NotifyOutboundSpamRecipients | Write | StringArray[] | The NotifyOutboundSpamRecipients parameter specifies the administrators to notify when an outgoing message is determined to be spam. Valid input for this parameter is an email address. Separate multiple email addresses with commas. | - |
| RecipientLimitInternalPerHour | Write | UInt32 | The RecipientLimitInternalPerHour parameter specifies the maximum number of internal recipients that a user can send to within an hour. A valid value is 0 to 10000. The default value is 0, which means the service defaults are used. | - |
| RecipientLimitPerDay | Write | UInt32 | The RecipientLimitPerDay parameter specifies the maximum number of recipients that a user can send to within a day. A valid value is 0 to 10000. The default value is 0, which means the service defaults are used. | - |
| RecipientLimitExternalPerHour | Write | UInt32 | The RecipientLimitExternalPerHour parameter specifies the maximum number of external recipients that a user can send to within an hour. A valid value is 0 to 10000. The default value is 0, which means the service defaults are used. | - |
| ActionWhenThresholdReached | Write | String | The ActionWhenThresholdReached parameter specifies the action to take when any of the limits specified in the policy are reached. Valid values are: Alert, BlockUser, BlockUserForToday. BlockUserForToday is the default value. | - |
| AutoForwardingMode | Write | String | The AutoForwardingMode specifies how the policy controls automatic email forwarding to outbound recipients. Valid values are: Automatic, On, Off. | - |
| Ensure | Write | String | Specify if this policy should exist or not. | `Present`, `Absent` |


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



