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

### userMailBoxSetting values
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
| outboundNotRescanned                   | At the Moment Microsoft cannot reach a verdict as the message cannot be analyzed without taking outside the environment or due to other reasons. |
| zeroHourAutoPurgeAllowed               | The reported message was zapped and allowed after delivery as the message was good. |
| zeroHourAutoPurgeBlocked               | The Reported message was zapped and blocked after delivery as the message was bad. |
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
| allowedByExchangeTransportRule         | The reported message was allowed as the organization has a related exchange transport rule. |
| blockedByExchangeTransportRule         | The reported message was blocked as the organization has a related exchange transport rule. |
| quarantineReleased                     | The reported message was blocked as intended but then released from quarantine. |
| quarantineReleasedThenBlocked          | The reported message was blocked as intended but then released from quarantine and blocked by user setting. |
| junkMailRuleDisabled                   | The reported message was bound to be delivered to junk, but junk folder has been disabled. |
| allowedByUserSetting                   | The reported message was allowed due to user safe or trust sender setting. |
| blockedByUserSetting                   | The reported message was blocked due to user blocked or trusted sender setting. |
| allowedByTenant                        | The reported message is allowed due to tenant policy or settings. |
| blockedByTenant                        | The reported message is blocked due to tenant policy or settings. |
| invalidFalsePositive                   | The reported message is already allowed.                      |
| invalidFalseNegative                   | The reported message is already blocked.                     |
| spoofBlocked                           | The reported message has been determined as spoof by our system and blocked.                    |
| goodReclassifiedAsBad                  | The reported message has already been determined bad by our system. |
| goodReclassifiedAsBulk                 | The reported message has already been determined bulk by our system. |
| goodReclassifiedAsGood                 | The reported message has already been determined good by our system. |
| goodReclassifiedAsCannotMakeDecision   | At the moment Microsoft cannot reach a verdict on the reported message and so please submit again.   |
| badReclassifiedAsGood                  | The reported message has already been identified as good by the system. |
| badReclassifiedAsBulk                  | The reported message has already been identified as bulk by the system. |
| badReclassifiedAsBad                   | The reported message has already been identified as bad by the system. |
| badReclassifiedAsCannotMakeDecision    | At the moment Microsoft cannot reach a verdict on the reported message and so please submit again. |
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

