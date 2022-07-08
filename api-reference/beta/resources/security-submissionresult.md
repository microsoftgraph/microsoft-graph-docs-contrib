---
title: "submissionResult resource type"
description: "Represents the result of a review after the threat submission is processed by Microsoft"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# submissionResult resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the result of a review after the threat submission is processed by Microsoft.

## Properties
| Property           | Type                               | Description                                                             |
|:-------------------|:-----------------------------------|:------------------------------------------------------------------------|
| category           | submissionResultCategory           | The submission result category. The possible values are: `notJunk`, `spam`, `phishing`, `malware`, `allowedByPolicy`, `blockedByPolicy`, `spoof`, `unknown`, `noResultAvailable` and `unkownFutureValue`. |
| detail             | [security.submissionResultDetail](#submissionresultdetail-values)             | Specifies the additional details provided by Microsoft to substantiate their analysis result. |
| detectedFiles      | Collection([security.submissionDetectedFile](../resources/security-submissiondetectedfile.md)) | Specifies the files detected by Microsoft in the submitted emails|
| detectedUrls       | Collection(String)                 | Specifes the URLs detected by Microsoft in the submitted email.|
| userMailboxSetting | [security.userMailboxSetting](#usermailboxsetting-values) | Specifies the setting for user mailbox denoted by a comma separated string. |

### userMailboxSetting values
| Member  | Description |
| :----------------- | :------------------------------------ |
| none | no user mailbox setting related with this threat submission. |
| junkMailDeletion | the submitted email was applied with junk mail deletion. |
| isFromAddressInAddressBook | the submitted email was from address in address book. |
| isFromAddressInAddressSafeList | the submitted email was from address in address safe list. |
| isFromAddressInAddressBlockList | the submitted email was from address in address safe list. |
| isFromAddressInAddressImplicitSafeList | the submitted email was from address in address implicit safe list. |
| isFromAddressInAddressImplicitJunkList | the submitted email was from address in address implicit junk list. |
| isFromDomainInDomainSafeList | the submitted email was from domain in domain safe list. |
| isFromDomainInDomainBlockList | the submitted email was from domain in domain block list. |
| isRecipientInRecipientSafeList | the submitted email was to recipient in recipient safe list. |
| customRule | the submitted email was handled by one user custom rule. |
| senderPraPresent | the submitted email was from sender who presents before. |
| fromFirstTimeSender | the submitted email was from first time sender. |
| exclusive | the recipient of the submitted email are exclusive to the recipient's address book while delivery was only allowed from address book contacts. |
| priorSeenPass | the submitted email was prior seen passed. |
| senderAuthenticationSucceeded | the sender authentication of the submitted email was succeeded. |
| isJunkMailRuleEnabled | the junk mail rule was enabled. |
| unknownFutureValue | unknown future value. |

### submissionResultDetail values
| Member                                  | Description                                                  |
| :------------------------------------- | :----------------------------------------------------------- |
| none                                   | Microsoft has no additional details on the result.            |
| underInvestigation                     | Microsoft is still investigating the sample.                  |
| simulatedThreat                        | The reported message is a phish simulated message.            |
| allowedByThirdPartyFilters             | The reported message was allowed by Third party filters working with MDO. |
| messageNotFound                        | The reported message could not be analyzed as it cannot be found. |
| urlFileShouldNotBeBlocked              | The reported URL or file has been found clean and Microsoft will update their machine learning filters in the coming weeks. |
| urlFileShouldBeBlocked                 | The reported URL or file has been found malicious and Microsoft will update their machine learning filters in the coming weeks. |
| urlFileCannotMakeDecision              | At the moment Microsoft cannot reach a verdict on the URL or the file and so submit again. |
| domainImpersonation                    | The reported message was allowed due to the domain impersonation policy settings. |
| userImpersonation                      | The reported message was allowed due to the user impersonation policy settings. |
| brandImpersonation                     | The reported message was allowed due to the brand impersonation policy settings. |
| outboundShouldNotBeBlocked             | The reported outgoing messages has been found clean and Microsoft will update its machine learning based outbound filters in the coming weeks. |
| outboundShouldBeBlocked                | The reported outgoing messages has been found malicious and Microsoft will update its machine learning based outbound filters in the coming weeks. |
| outboundBulk                           | The reported outgoing messages has been found to be bulk and Microsoft will update its machine learning based outbound filters in the coming weeks. |
| outboundCannotMakeDecision             | At the moment Microsoft cannot reach a verdict on the outgoing reported message and so please submit again. |
| outboundNotRescanned                   | At the Moment Microsoft cannot reach a verdict as the message cannot be analyzed without taking it outside the environment or due to other reasons. |
| zeroHourAutoPurgeAllowed               | The reported message was reverse zapped as after delivery the message was found to be good. |
| zeroHourAutoPurgeBlocked               | The Reported message was zapped as after delivery the message was found to be bad. |
| zeroHourAutoPurgeQuarantineReleased    | The Reported message was released from Quarantine despite being zapped as it turned malicious after delivery. |
| onPremisesSkip                         | The reported message cannot be analyzed as this is went through a  onprem setup of exchange online protection. |
| allowedByTenantAllowBlockList          | The reported message was allowed as one or more entities in the email are on the tenant allow block list. |
| blockedByTenantAllowBlockList          | The reported message was blocked as one or more entities in the email are on the tenant allow block list. |
| allowedUrlByTenantAllowBlockList       | The reported URL was allowed as URL is on the tenant allow block list. |
| allowedFileByTenantAllowBlockList      | The reported file was allowed as file is on the tenant allow block list. |
| allowedSenderByTenantAllowBlockList    | The reported message was allowed as sender is on the tenant allow block list. |
| allowedRecipientByTenantAllowBlockList | The reported outgoing message was allowed as recipient is on the tenant allow block list. |
| blockedUrlByTenantAllowBlockList       | The reported URL was blocked as URL is on the tenant allow block list. |
| blockedFileByTenantAllowBlockList      | The reported file was blocked as file is on the tenant allow block list. |
| blockedSenderByTenantAllowBlockList    | The reported message was blocked as sender in on the tenant allow block list. |
| blockedRecipientByTenantAllowBlockList | The reported outgoing message was blocked as the recipient is on the tenant allow block list. |
| allowedByConnection                    | The reported message was allowed as the sending IP is on the hosted connection filter policy. |
| blockedByConnection                    | The reported message was blocked as the sending IP is on the hosted connection filter policy. |
| allowedByExchangeTransportRule         | The reported message was allowed as the organization has a related exchange transport rule. Remove the exchange transport rule so that EOP/MDO can filter accordingly. |
| blockedByExchangeTransportRule         | The reported message was blocked as the organization has a related exchange transport rule. Remove the exchange transport rule so that EOP/MDO can filter accordingly. |
| quarantineReleased                     | The reported message was released from Quarantine despite being quarantined by EOP/MDO |
| quarantineReleasedThenBlocked          | The reported message was blocked by user setting after being released from Quarantine. Remove the user setting so that the mail can be released to the inbox |
| junkMailRuleDisabled                   | The reported message was bound to be delivered to the junk folder, but junk folder has been disabled. Turn on junk folder setting so that EOP/MDO can deliver emails accordingly |
| allowedByUserSetting                   | The reported message was allowed due to user safe or trusted sender setting in outlook. Remove the safe or trusted sender setting so that EOP/MDO can filter accordingly |
| blockedByUserSetting                   | The reported message was blocked due to user blocked or trusted sender setting in outlook. Remove the blocked or trusted sender setting so that EOP/MDO can filter accordingly |
| allowedByTenant                        | The reported message was allowed due to tenant policy or policy action settings. Review the EOP/MDO policy or policy action settings so that EOP/MDO can filter accordingly |
| blockedByTenant                        | The reported message was blocked due to tenant policy or policy action settings. Review the EOP/MDO policy or policy action settings so that EOP/MDO can filter accordingly |
| invalidFalsePositive                   | The reported message is already allowed by EOP/MDO.                  |
| invalidFalseNegative                   | The reported message is already blocked by EOP/MDO.                     |
| spoofBlocked                           | The reported message has been determined by spoof by our system and so blocked. Create a spoof allow in Tenant allow/block list so that EOP/MDO can allow emails from this spoofed sender    |
| goodReclassifiedAsBad                  | Microsoft finds the reported message to be malicious. Existing emails have been quarantined. The phish and malware filters will learn from this after a few weeks. Till then to block it, create a block entry in Tenant allow/block list if not done already |
| goodReclassifiedAsBulk                 | Microsoft finds the reported message to be spam. The spam and bulk filters will learn from this after a few weeks. Till then to block it, create a block entry in Tenant allow/block list if not done already |
| goodReclassifiedAsGood                 | Microsoft finds the reported message to be clean. If you disagree with this verdict resubmit the email. Till then to block it, create a block entry in Tenant allow/block list if not done already |
| goodReclassifiedAsCannotMakeDecision   | Microsoft cannot reach a verdict at this time. Resubmit it to get a verdict on it after analysis. Use Tenant allow/block list to immediately block it if not done already. |
| badReclassifiedAsGood                  | Microsoft finds the reported message to be clean. Existing emails have been released. The phish and malware filters will learn from this after a few weeks. Till then to allow it, create an allow entry in Tenant allow/block list if not done already |
| badReclassifiedAsBulk                  | Microsoft finds the reported message to be spam. The spam and bulk filters will learn from this after a few weeks. Till then to allow it, create an allow entry in Tenant allow/block list if not done already |
| badReclassifiedAsBad                   | Microsoft finds the reported message to be malicious. If you disagree with this verdict resubmit the email. Till then to allow it, create an allow entry in Tenant allow/block list if not done already |
| badReclassifiedAsCannotMakeDecision    | Microsoft cannot reach a verdict at this time. Resubmit it to get a verdict on it after analysis. Use Tenant allow/block list to immediately allow it if not done already. |
| unknownFutureValue                     | Any future value which is not in use now.                     |


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

