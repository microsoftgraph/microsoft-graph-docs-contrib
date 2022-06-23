---
title: "userMailboxSetting enum  type"
description: "Represents user mailbox setting information of threat submission result"
author: "caigen"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# userMailboxSetting enum type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents user mailbox setting information of threat submission result. It is a flag enum.

## Members
| Value  | Description |
| :----------------- | :------------------------------------ |
| none | no user mailbox setting related with this threat submission |
| junkMailDeletion | Microsoft has no additional details on the result |
| isFromAddressInAddressBook | the submitted email was from address in address book |
| isFromAddressInAddressSafeList | the submitted email was from address in address safe list |
| isFromAddressInAddressBlockList | the submitted email was from address in address safe list |
| isFromAddressInAddressImplicitSafeList | the submitted email was from address in address implicit safe list |
| isFromAddressInAddressImplicitJunkList | the submitted email was from address in address implicit junk list |
| isFromDomainInDomainSafeList | the submitted email was from domain in domain safe list |
| isFromDomainInDomainBlockList | the submitted email was from domain in domain block list |
| isRecipientInRecipientSafeList | the submitted email was to recipient in recipient safe list |
| customRule | the submitted email was handled by one user custom rule |
| senderPraPresent | the submitted email was from sender who presents before |
| fromFirstTimeSender | the submitted email was from first time sender |
| exclusive | the recipient of the submitted email are exclusive to the recipient's address book while delivery was only allowed from address book contacts |
| priorSeenPass | the submitted email was prior seen passed |
| senderAuthenticationSucceeded | the sender authentication of the submitted email was succeeded |
| isJunkMailRuleEnabled | the junk mail rule was enabled |
| unknownFutureValue | unkown future value |