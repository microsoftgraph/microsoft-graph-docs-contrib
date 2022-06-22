---
title: "submissionResultDetail enum  type"
description: "Represents threat submission result detail information"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# submissionResultDetail enum type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines threat submission result detail and gives more information about submission result.

## Members
| Value                                  | Description                                                  |
| :------------------------------------- | :----------------------------------------------------------- |
| none                                   | Microsoft has no additional details on the result            |
| underInvestigation                     | Microsoft is still investigating the sample                  |
| simulatedThreat                        | The reported message is a phish simulated message            |
| allowedByThirdPartyFilters             | The reported message was allowed by Third party filters working with MDO |
| messageNotFound                        | The reported message could not be analyzed as it cannot be found |
| urlFileShouldNotBeBlocked              | The reported URL or file has been found clean and Microsoft will update their machine learning filters in the coming weeks |
| urlFileShouldBeBlocked                 | The reported URL or file has been found malicious and Microsoft will update their machine learning filters in the coming weeks |
| urlFileCannotMakeDecision              | At the moment Microsoft cannot reach a verdict on the URL or the file and so submit again |
| domainImpersonation                    | The reported message was allowed due to the domain impersonation policy settings |
| userImpersonation                      | The reported message was allowed due to the user impersonation policy settings |
| brandImpersonation                     | The reported message was allowed due to the brand impersonation policy settings |
| outboundShouldNotBeBlocked             | The reported outgoing messages has been found clean and Microsoft will update its Machine Learning based Outbound Filters in the coming weeks |
| outboundShouldBeBlocked                | The reported outgoing messages has been found malicious and Microsoft will update its Machine Learning based Outbound Filters in the coming weeks |
| outboundBulk                           | The reported outgoing messages has been found to be bulk and Microsoft will update its Machine Learning based Outbound Filters in the coming weeks |
| outboundCannotMakeDecision             | At the moment Microsoft cannot reach a verdict on the outgoing reported message and so please submit again |
| outboundNotRescanned                   | At the Moment Microsoft cannot reach a verdict as the message cannot be analyzed without taking outside the environment or due to other reasons |
| zeroHourAutoPurgeAllowed               | The reported message was blocked as it was zapped as it was turned malicious after delivery |
| zeroHourAutoPurgeBlocked               | The Reported message was not zapped despite turning malicious after delivery as the message was bad |
| zeroHourAutoPurgeQuarantineReleased    | The Reported message was released from Quarantine despite being Zapped as it turned malicious after delivery |
| onPremisesSkip                         | The reported message cannot be analyzed as this is went through a  onprem setup of exchange online protection |
| allowedByTenantAllowBlockList          | The reported message was allowed as one or more entities in the email are on the Tenant Allow block list |
| blockedByTenantAllowBlockList          | The reported message was blocked as one or more entities in the email are on the Tenant Allow block list |
| allowedUrlByTenantAllowBlockList       | The reported URL was allowed as URL is on the Tenant allow block list |
| allowedFileByTenantAllowBlockList      | The reported file was allowed as File is on the Tenant allow block list |
| allowedSenderByTenantAllowBlockList    | The reported message was allowed as sender is on the Tenant allow block list |
| allowedRecipientByTenantAllowBlockList | The reported outgoing message was allowed as recipient is on the Tenant allow block list |
| blockedUrlByTenantAllowBlockList       | The reported URL was blocked as URL is on the Tenant allow block list |
| blockedFileByTenantAllowBlockList      | The reported file was blocked as file is on the Tenant allow block list |
| blockedSenderByTenantAllowBlockList    | The reported message was blocked as sender in on the Tenant allow block list |
| blockedRecipientByTenantAllowBlockList | The reported outgoing message was blocked as the recipient is on the Tenant allow block list |
| allowedByConnection                    | The reported message was allowed as the sending IP is on the hosted connection filter policy |
| blockedByConnection                    | The reported message was blocked as the sending IP is on the hosted connection filter policy |
| allowedByExchangeTransportRule         | The reported message was allowed as the organization has a related exchange transport rule |
| blockedByExchangeTransportRule         | The reported message was blocked as the organization has a related exchange transport rule |
| quarantineReleased                     | The reported message was blocked as intended but then released from quarantine |
| quarantineReleasedThenBlocked          | The reported message was blocked as intended but then released from quarantine and blocked by user setting |
| junkMailRuleDisabled                   | The reported message was bound to be delivered to junk, but junk folder has been disabled |
| allowedByUserSetting                   | The reported message was allowed due to user safe or trust sender setting |
| blockedByUserSetting                   | The reported message was blocked due to user blocked or trusted sender setting |
| allowedByTenant                        | The reported message is allowed due to Tenant Policy or settings |
| blockedByTenant                        | The reported message is blocked due to Tenant Policy or settings |
| invalidFalsePositive                   | The reported message is already allowed                      |
| invalidFalseNegative                   | The reported message is already blocked                      |
| spoofBlocked                           | The reported message is spoof and blocked                    |
| goodReclassifiedAsBad                  | The reported message has already been determined bad by our system |
| goodReclassifiedAsBulk                 | The reported message has already been determined bulk by our system |
| goodReclassifiedAsGood                 | The reported message has already been determined good by our system |
| goodReclassifiedAsCannotMakeDecision   | The reported message does not have a verdict at the moment   |
| badReclassifiedAsGood                  | The reported message has already been identified as good by the system |
| badReclassifiedAsBulk                  | The reported message has already been identified as bulk by the system |
| badReclassifiedAsBad                   | The reported message has already been identified as bad by the system |
| badReclassifiedAsCannotMakeDecision    | The reported message does not have a decision at the moment  |
| unknownFutureValue                     | Any future value which is not in use now                     |
