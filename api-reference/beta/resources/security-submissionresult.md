---
title: "submissionResult resource type"
description: "Represents the result of a review after the threat submission is processed by Microsoft."
author: "caigen"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/08/2024
---

# submissionResult resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the result of a review after the threat submission is processed by Microsoft.

## Properties
| Property           | Type                               | Description |
|:-------------------|:-----------------------------------|:------------|
| category           | microsoft.graph.security.submissionResultCategory | The submission result category. The possible values are: `notJunk`, `spam`, `phishing`, `malware`, `allowedByPolicy`, `blockedByPolicy`, `spoof`, `unknown`, `noResultAvailable`, `unknownFutureValue`, `beingAnalyzed`, `notSubmittedToMicrosoft`, `phishingSimulation`, `allowedDueToOrganizationOverride`, `blockedDueToOrganizationOverride`, `allowedDueToUserOverride`, `blockedDueToUserOverride`, `itemNotfound`, `threatsFound`, `noThreatsFound`, `domainImpersonation`, `userImpersonation`, `brandImpersonation`, `authenticationFailure`, `spoofedBlocked`, `spoofedAllowed`, `bulk`, and `reasonLostInTransit`. You must use the Prefer: include-unknown-enum-members request header to get the following values in this evolvable enum: `beingAnalyzed`, `notSubmittedToMicrosoft`, `phishingSimulation`, `allowedDueToOrganizationOverride`, `blockedDueToOrganizationOverride`, `allowedDueToUserOverride`, `blockedDueToUserOverride`, `itemNotfound`, `threatsFound`, `noThreatsFound`, `domainImpersonation`, `userImpersonation`, `brandImpersonation`, `authenticationFailure`, `spoofedBlocked`, `spoofedAllowed`, `bulk`, and `reasonLostInTransit`. |
| detail             | [security.submissionResultDetail](#submissionresultdetail-values)             | Specifies the extra details provided by Microsoft to substantiate their analysis result. |
| detectedFiles      | [security.submissionDetectedFile](../resources/security-submissiondetectedfile.md) collection | Specifies the files detected by Microsoft in the submitted emails.|
| detectedUrls       | String collection                 | Specifies the URLs detected by Microsoft in the submitted email.|
| userMailboxSetting | [security.userMailboxSetting](#usermailboxsetting-values) | Specifies the setting for user mailbox denoted by a comma-separated string. |

### userMailboxSetting values
| Member  | Description |
| :----------------- | :------------------------------------ |
| none | no user mailbox setting related with this threat submission. |
| junkMailDeletion | The submitted email was applied with junk mail deletion. |
| isFromAddressInAddressBook | The submitted email was from address in address book. |
| isFromAddressInAddressSafeList | The submitted email was from address in address safe list. |
| isFromAddressInAddressBlockList | The submitted email was from address in address safe list. |
| isFromAddressInAddressImplicitSafeList | The submitted email was from address in address implicit safe list. |
| isFromAddressInAddressImplicitJunkList | The submitted email was from address in address implicit junk list. |
| isFromDomainInDomainSafeList | The submitted email was from domain in domain safe list. |
| isFromDomainInDomainBlockList | The submitted email was from domain in domain blocklist. |
| isRecipientInRecipientSafeList | The submitted email was to recipient in recipient safe list. |
| customRule | The submitted email was handled by one user custom rule. |
| senderPraPresent | The submitted email was from sender who presents before. |
| fromFirstTimeSender | The submitted email was from first time sender. |
| exclusive | The recipients of the submitted email are exclusive to the recipient's address book while delivery was only allowed from address book contacts. |
| priorSeenPass | The submitted email was prior seen passed. |
| senderAuthenticationSucceeded | The sender authentication of the submitted email was succeeded. |
| isJunkMailRuleEnabled | The junk mail rule was enabled. |
| unknownFutureValue | unknown future value. |

### submissionResultDetail values
| Member                                  | Description |
| :------------------------------------- | :----------------------------------------------------------- |
| none                                   | Microsoft has no other details on the result to share.            |
| underInvestigation                     | Microsoft is still analyzing the sample and the results should be available soon.      |
| simulatedThreat                        |  The reported message was blocked as it's a phish simulated email send to users for phish education. To configure EOP/MDO to allow, it checks out advanced delivery|
| allowedBySecOps                          | The reported message was allowed due to advanced delivery flow for security operators mailbox. To block the message, remove it from advanced delivery. |
| allowedByThirdPartyFilters             | The reported message was either allowed or blocked due third-party filters working with EOP/MDO. Configure enhanced filtering so that EOP/MDO can filter accurately. |
| messageNotFound                        | Microsoft can't provide a verdict on the reported message as Microsoft can't find the actual message. Resubmit by uploading the email using submissions in security.microsoft.com. |
| urlFileShouldNotBeBlocked              | Microsoft finds the reported entity to be clean. Existing emails containing it have been released. The phish and malware filters will learn from this after a few weeks. Until the filters learn, create an allow entry in Tenant allow/block list if not done already. |
| urlFileShouldBeBlocked                 | Microsoft finds the reported entity to be malicious. Existing emails containing it have been quarantined. The phish and malware filters will learn from this after a few weeks. Until the filters learn, create a block entry in Tenant allow/block list if not done already. |
| urlFileCannotMakeDecision              | Microsoft can't reach a verdict at this time. Resubmit it to get a verdict on it after analysis. Use Tenant allow/block list to immediately allow/block it if not already done. |
| domainImpersonation                    | The reported message was either allowed or blocked due to domain impersonation policy settings. Configure domain impersonation policy so that EOP/MDO can filter accordingly. |
| userImpersonation                      | The reported message was either allowed or blocked due to user impersonation policy settings. Configure user impersonation policy so that EOP/MDO can filter accordingly. |
| brandImpersonation                     | The reported message was either allowed or blocked due to brand impersonation policy settings. Configure brand impersonation policy so that EOP/MDO can filter accordingly. |
| outboundShouldNotBeBlocked             | The reported outgoing messages has been found clean and Microsoft will update its machine learning based outbound filters in the coming weeks. |
| outboundShouldBeBlocked                | The reported outgoing messages has been found malicious and Microsoft will update its machine learning based outbound filters in the coming weeks. |
| outboundBulk                           | Microsoft finds the reported message to be spam/junk. The outbound filters will learn after a few weeks. |
| outboundCannotMakeDecision             | Microsoft can't reach a verdict at this time. Resubmit it to get to a verdict on it after analysis.  |
| outboundNotRescanned                   | Microsoft can't provide a verdict on the reported outbound message as Microsoft can't find the actual message. Resubmit by uploading the email using submissions in security.microsoft.com. |
| zeroHourAutoPurgeAllowed               | The reported message was removed from quarantine as it was found to be clean. |
| zeroHourAutoPurgeBlocked               | The Reported message was blocked or quarantined because it was found to be malicious.|
| zeroHourAutoPurgeQuarantineReleased    | The reported message was released from Quarantine despite being quarantined due to zap as message turned malicious after delivery. |
| onPremisesSkip                         | The reported message can't be analyzed as this went through an on-premises setup of exchange online protection. Configure your hybrid setup so that EOP/MDO can scan messages before delivering to exchange on-premises mailboxes. |
| allowedByTenantAllowBlockList          | The reported message was allowed as one or more entities in the email are on the tenant allow/block list. Remove allows from Tenant allow/block list so that EOP/MDO can filter accordingly. |
| blockedByTenantAllowBlockList          | The reported message was blocked as one or more entities in the email are on the tenant allow/block list. Remove blocks from Tenant allow/block list so that EOP/MDO can filter accordingly. |
| allowedUrlByTenantAllowBlockList       | The reported URL was allowed as it is on the Tenant allow/block list. Remove the allow from Tenant allow/block list so that EOP/MDO can filter accordingly. |
| allowedFileByTenantAllowBlockList      | The reported file was allowed as it is on the Tenant allow/block list. Remove the allow from Tenant allow/block list so that EOP/MDO can filter accordingly. |
| allowedSenderByTenantAllowBlockList    | The reported message was allowed as the sender of the email is on the Tenant allow/block list. Remove allow from Tenant allow/block list so that EOP/MDO can filter accordingly|
| allowedRecipientByTenantAllowBlockList | The reported outgoing message was allowed as recipient is on the Tenant allow/block list. Remove allow from Tenant allow/block so that EOP/MDO can filter accordingly. |
| blockedUrlByTenantAllowBlockList       | The reported URL was blocked as it is on the Tenant allow/block list. Remove the block from Tenant allow/block list so that EOP/MDO can filter accordingly. |
| blockedFileByTenantAllowBlockList      | The reported file was blocked as it is on the Tenant allow/block list. Remove the block from Tenant allow/block list so that EOP/MDO can filter accordingly. |
| blockedSenderByTenantAllowBlockList    | The reported message was blocked as the sender of the email is on the Tenant allow/block list. Remove block from Tenant allow/block list so that EOP/MDO can filter accordingly|
| blockedRecipientByTenantAllowBlockList | The reported outgoing message was blocked as recipient is on the Tenant allow/block list. Remove block from Tenant allow/block so that EOP/MDO can filter accordingly. |
| allowedByConnection                    | The reported message was allowed as the sending IP is on the hosted connection filter policy. Remove the IP from the hosted connection filter policy so that EOP/MDO can filter accordingly. |
| blockedByConnection                    | The reported message was blocked as the sending IP is on the hosted connection filter policy. Remove the IP from the hosted connection filter policy so that EOP/MDO can filter accordingly. |
| allowedByExchangeTransportRule         | The reported message was allowed as the organization has a related exchange transport rule. Remove the exchange transport rule so that EOP/MDO can filter accordingly. |
| blockedByExchangeTransportRule         | The reported message was blocked as the organization has a related exchange transport rule. Remove the exchange transport rule so that EOP/MDO can filter accordingly. |
| quarantineReleased                     | The reported message was released from Quarantine despite being quarantined by EOP/MDO. |
| quarantineReleasedThenBlocked          | The reported message was blocked by user setting after being released from Quarantine. Remove the user setting so that the mail can be released to the inbox. |
| junkMailRuleDisabled                   | The reported message was bound to be delivered to the junk folder, but junk folder has been disabled. Turn on junk folder setting so that EOP/MDO can deliver emails accordingly. |
| allowedByUserSetting                   | The reported message was allowed due to user safe or trusted sender setting in outlook. Remove the safe or trusted sender setting so that EOP/MDO can filter accordingly. |
| blockedByUserSetting                   | The reported message was blocked due to user blocked or trusted sender setting in outlook. Remove the blocked or trusted sender setting so that EOP/MDO can filter accordingly. |
| allowedByTenant                        | The reported message was allowed due to tenant policy or policy action settings. Review the EOP/MDO policy or policy action settings so that EOP/MDO can filter accordingly. |
| blockedByTenant                        | The reported message was blocked due to tenant policy or policy action settings. Review the EOP/MDO policy or policy action settings so that EOP/MDO can filter accordingly. |
| invalidFalsePositive                   | The reported message is already allowed by EOP/MDO.                  |
| invalidFalseNegative                   | The reported message is already blocked by EOP/MDO.                     |
| spoofBlocked                           | The reported message is determined as spoof by our system and so blocked. Create a spoof allow in Tenant allow/block list so that EOP/MDO can allow emails from this spoofed sender. |
| goodReclassifiedAsBad                  | Microsoft finds the reported message to be malicious. Existing emails are quarantined. The phish and malware filters will learn from this after a few weeks. Until the filters learn, create a block entry in Tenant allow/block list if not done already. |
| goodReclassifiedAsBulk                 | Microsoft finds the reported message to be spam. The spam and bulk filters will learn from this message after a few weeks. Until the filters learn, create a block entry in Tenant allow/block list if not done already. |
| goodReclassifiedAsGood                 | Microsoft finds the reported message to be clean, if you disagree with this verdict resubmit the email. Until Microsoft blocks the message, create a block entry in Tenant allow/block list if not done already. |
| goodReclassifiedAsCannotMakeDecision   | Microsoft can't reach a verdict at this time. Resubmit it to get a verdict on it after analysis. Use Tenant allow/block list to immediately block it if not done already. |
| badReclassifiedAsGood                  | Microsoft finds the reported message to be clean. Existing emails have been released. The phish and malware filters will learn from this after a few weeks. Until the filters learn, create an allow entry in Tenant allow/block list if not done already. |
| badReclassifiedAsBulk                  | Microsoft finds the reported message to be spam. The spam and bulk filters will learn from this message after a few weeks. Until the filters learn, create an allow entry in Tenant allow/block list if not done already. |
| badReclassifiedAsBad                   | Microsoft finds the reported message to be malicious. If you disagree with this verdict, resubmit the email. Until the message is allowed, create an allow entry in Tenant allow/block list if not done already. |
| badReclassifiedAsCannotMakeDecision    | Microsoft can't reach a verdict at this time. Resubmit it to get a verdict on it after analysis. Use Tenant allow/block list to immediately allow it if not done already. |
| unknownFutureValue                     | Any future value, which isn't in use now.                     |
| willNotifyOnceDone                     | We'll notify you as soon as we've analyzed your message. |
| checkUserReportedSettings              | If you want to submit messages to Microsoft, go to "User Reported Settings" and select either Microsoft only or Microsoft and my reporting mailbox under "Reported Message Destinations". |
| partOfEducationCampaign                | The reported message was part of a phishing education campaign. For more information, see the Advanced Delivery or Attack Simulation page. |
| allowedByAdvancedDelivery              | The reported message was allowed due to advanced delivery flow for security operators mailbox. To block the message, remove it from advanced delivery. |
| allowedByEnhancedFiltering             | The reported message was either allowed due to enhanced filtering for connectors policy, if you no longer want to allow this item remove the entry.  |
| itemDeleted                            | Microsoft can't provide a verdict on the reported message as Microsoft can't find the actual message. Resubmit by uploading the email using submissions in security.microsoft.com. |
| itemFoundClean                         | Microsoft finds the reported message to be clean, if you disagree with this verdict resubmit the email. Until Microsoft blocks the message, create a block entry in Tenant Allow/Block List if not done already. |
| itemFoundMalicious                     | Microsoft finds the reported message to be malicious. If you disagree with this verdict, resubmit the email. Until the message is allowed, create an allow entry in Tenant Allow/Block List if not done already. |
| unableToMakeDecision                   | Microsoft can't reach a verdict at this time. Resubmit it to get a verdict on it after analysis. Use Tenant Allow/Block List to immediately allow or block it if not done already. |
| domainResembledYourOrganization        | The reported message comes from a domain that resembles your organization. Reevaluate item and, if it still appears to be clean, add the sender domain to the list of trusted domains within the Anti phish policy. |
| endUserBeingImpersonated               | Someone impersonating the end user sent this reported message. Reevaluate item and, if it still appears to be clean, add the sender's address to the list of trusted senders within the anti-phishing policy. |
| associatedWithBrand                    | The reported message contains content that appears to be associated with a particular brand. Review and, if you deem it to be clean and necessary, use the Tenant Allow Block List to allow these items in the future. |
| senderFailedAuthentication             | The reported message wasn't delivered because it failed authentication. Review your domain authentication settings or contact the domain owner. |
| endUserBeingSpoofed                    | The reported message is determined as spoof by our system and so blocked. Create a spoof allow in Tenant allow/block list so that EOP/MDO can allow emails from this spoofed sender. |
| itemFoundBulk                          | Microsoft finds the reported message to be bulk. The spam and bulk filters will learn from this message after a few weeks. Until the filters learn, create a block entry in Tenant Allow/Block List if not done already. |
| itemNotReceivedByService               | Microsoft can't provide a verdict on the reported message as Microsoft can't find the actual message. Verify that no policies or mail flow rules prevent items from reaching our service. |
| itemFoundSpam                          | Microsoft finds the reported message to be spam. The spam and bulk filters will learn from this message after a few weeks. Until the filters learn, create a block entry in Tenant Allow/Block List if not done already. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.submissionResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.submissionResult",
  "category": "String",
  "detail": "String",
  "userMailboxSetting": "String",
  "detectedUrls": [
    "String"
  ],
  "detectedFiles": [
    {
      "@odata.type": "microsoft.graph.security.submissionDetectedFile"
    }
  ]
}
```

