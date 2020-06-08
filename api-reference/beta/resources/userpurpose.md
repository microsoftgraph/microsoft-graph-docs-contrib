---
title: "userPurpose enum type"
description: "Represents the user's recipient or mailbox type in Exchange Online."
localization_priority: Normal
doc_type: enumPageType
ms.prod: "outlook"
author: "abheek-das"
---

# userPurpose enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the user's recipient or mailbox type in Exchange Online.


## Members
| Members	   | #	|Description|
|:---------------|:--------|:----------|
|unknown|0|No information found about the mailbox|
|user|1|A user account with a mailbox in the local forest|
|linked|2|A mailbox linked to a user account in another forest|
|shared|3|A mailbox shared by two or more user accounts|
|room|4|A mailbox representing a conference room|
|equipment|5|A mailbox representing a piece of equipment|
|others|6|Mailbox found but user purpose is different from ones specified above|
