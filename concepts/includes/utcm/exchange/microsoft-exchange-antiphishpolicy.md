---
author: "swatyario"
ms.localizationpriority: medium
ms.subservice: "tenant-configuration-management"
ms.topic: include
---

<!-- markdownlint-disable MD041-->

### Description

This resource configures an [Anti-Phish Policy in Exchange Online](/powershell/module/exchange/advanced-threat-protection/new-antiphishpolicy?view=exchange-ps).


### Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --- | --- | --- | --- | --- |
| Identity | Key | String | The Identity parameter specifies the name of the antiphishing policy that you want to modify. | - |
| Ensure | Write | String | Specify if this policy should exist or not. | `Present`, `Absent` |
| AdminDisplayName | Write | String | The AdminDisplayName parameter specifies a description for the policy. | - |
| PhishThresholdLevel | Write | String | The PhishThresholdLevel parameter specifies the tolerance level that's used by machine learning in the handling of phishing messages. | `1`, `2`, `3`, `4` |
| AuthenticationFailAction | Write | String | The AuthenticationFailAction parameter specifies the action to take when the message fails composite authentication. | `MoveToJmf`, `Quarantine` |
| TargetedUserProtectionAction | Write | String | The TargetedUserProtectionActionâ¯parameter specifies the action to take on detected user impersonation messages for the users specified by the TargetedUsersToProtect parameter. | `BccMessage`, `Delete`, `MoveToJmf`, `NoAction`, `Quarantine`, `Redirect` |
| Enabled | Write | Boolean | Specify if this policy should be enabled. Default is $true. | - |
| EnableFirstContactSafetyTips | Write | Boolean | The EnableFirstContactSafetyTips parameter specifies whether to enable or disable the safety tip that's shown when recipients first receive an email from a sender or do not often receive email from a sender. | - |
| EnableMailboxIntelligence | Write | Boolean | The EnableMailboxIntelligence parameter specifies whether to enable or disable mailbox intelligence (the first contact graph) in domain and user impersonation protection. | - |
| EnableMailboxIntelligenceProtection | Write | Boolean | The EnableMailboxIntelligenceProtection specifies whether to enable or disable enhanced impersonation results based on each user's individual sender map. This intelligence allows Microsoft 365 to customize user impersonation detection and better handle false positives. | - |
| EnableOrganizationDomainsProtection | Write | Boolean | Theâ¯EnableOrganizationDomainsProtection parameter specifies whether to enable domain impersonation protection for all registered domains in the Office 365 organization. | - |
| EnableSimilarDomainsSafetyTips | Write | Boolean | Theâ¯EnableSimilarDomainsSafetyTipsâ¯parameter specifies whether to enable safety tips that are shown to recipients in messages for domain impersonation detections. | - |
| EnableSimilarUsersSafetyTips | Write | Boolean | Theâ¯EnableSimilarUsersSafetyTipsâ¯parameter specifies whether to enable safety tips that are shown to recipients in messages for user impersonation detections. | - |
| EnableSpoofIntelligence | Write | Boolean | The EnableSpoofIntelligence parameter specifies whether to enable or disable antispoofing protection for the policy. | - |
| EnableTargetedDomainsProtection | Write | Boolean | Theâ¯EnableTargetedDomainsProtection parameter specifies whether to enable domain impersonation protection for a list of specified domains. | - |
| EnableTargetedUserProtection | Write | Boolean | Theâ¯EnableTargetedUserProtection parameter specifies whether to enable user impersonation protection for the users specified by the TargetedUsersToProtect parameter | - |
| EnableUnauthenticatedSender | Write | Boolean | Theâ¯EnableUnauthenticatedSenderâ¯parameter enables or disables unauthenticated sender identification in Outlook. | - |
| EnableUnusualCharactersSafetyTips | Write | Boolean | Theâ¯EnableUnusualCharactersSafetyTipsâ¯parameter specifies whether to enable safety tips that are shown to recipients in messages for unusual characters in domain and user impersonation detections. | - |
| EnableViaTag | Write | Boolean | This setting is part of spoof protection. Theâ¯EnableViaTagâ¯parameter enables or disables adding the via tag to the From address in Outlook. | - |
| MakeDefault | Write | Boolean | Make this the default antiphishing policy | - |
| ExcludedDomains | Write | StringArray[] | Theâ¯ExcludedDomainsâ¯parameter specifies trusted domains that are excluded from scanning by antiphishing protection. You can specify multiple domains separated by commas. | - |
| ExcludedSenders | Write | StringArray[] | Theâ¯ExcludedSendersâ¯parameter specifies a list of trusted sender email addresses that are excluded from scanning by antiphishing protection. You can specify multiple email addresses separated by commas. | - |
| HonorDmarcPolicy | Write | Boolean | The HonorDmarcPolicy enables or disables using the sender's DMARC policy to determine what to do to messages that fail DMARC checks. | - |
| ImpersonationProtectionState | Write | String | The ImpersonationProtectionState parameter specifies the configuration of impersonation protection. | - |
| MailboxIntelligenceProtectionAction | Write | String | The MailboxIntelligenceProtectionAction parameter specifies what to do with messages that fail mailbox intelligence protection. | - |
| MailboxIntelligenceProtectionActionRecipients | Write | StringArray[] | Theâ¯MailboxIntelligenceProtectionActionRecipients parameter specifies the recipients to add to detected messages when the MailboxIntelligenceProtectionAction parameter is set to the valueâ¯Redirect or BccMessage. | - |
| MailboxIntelligenceQuarantineTag | Write | String | The MailboxIntelligenceQuarantineTag specifies the quarantine policy that's used on messages that are quarantined by mailbox intelligence. | - |
| SpoofQuarantineTag | Write | String | The SpoofQuarantineTag specifies the quarantine policy that's used on messages that are quarantined by spoof intelligence. | - |
| TargetedDomainActionRecipients | Write | StringArray[] | Theâ¯TargetedDomainActionRecipients parameter specifies the recipients to add to detected domain impersonation messages when the TargetedDomainProtectionAction parameter is set to the valueâ¯Redirect or BccMessage. A valid value for this parameter is an email address. You can specify multiple email addresses separated by commas. | - |
| TargetedDomainProtectionAction | Write | String | The TargetedDomainProtectionAction parameter specifies the action to take on detected domain impersonation messages. | `BccMessage`, `Delete`, `MoveToJmf`, `NoAction`, `Quarantine`, `Redirect` |
| TargetedDomainsToProtect | Write | StringArray[] | The TargetedDomainsToProtect parameter specifies the domains that are included in domain impersonation protection when the EnableTargetedDomainsProtection parameter is set to $true. | - |
| TargetedDomainQuarantineTag | Write | String | The TargetedDomainQuarantineTag specifies the quarantine policy that's used on messages that are quarantined by domain impersonation protection. | - |
| TargetedUserActionRecipients | Write | StringArray[] | Theâ¯TargetedUserActionRecipients parameter specifies the replacement or additional recipients for detected user impersonation messages when the TargetedUserProtectionAction parameter is set to the valueâ¯Redirect or BccMessage. A valid value for this parameter is an email address. You can specify multiple email addresses separated by commas. | - |
| TargetedUsersToProtect | Write | StringArray[] | The TargetedUsersToProtect parameter specifies the users that are included in user impersonation protection when the EnableTargetedUserProtection parameter is set to $true. | - |
| TargetedUserQuarantineTag | Write | String | The TargetedUserQuarantineTag specifies the quarantine policy that's used on messages that are quarantined by user impersonation protection. | - |


### Permissions

#### Microsoft Entra ID roles

The following [roles](/entra/identity/role-based-access-control/permissions-reference?toc=/graph/toc.json) can be granted to the TCM (Tenant Configuration Management) service principal:

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



