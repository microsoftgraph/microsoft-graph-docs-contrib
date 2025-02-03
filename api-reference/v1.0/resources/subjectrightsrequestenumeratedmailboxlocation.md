---
title: "subjectRightsRequestEnumeratedMailboxLocation resource type"
description: "Represents the properties for a subject rights request that defines specific mailboxes (Exchange mailboxes and individual or group Microsoft Teams chats) as a search location."
author: "skadam-msft"
ms.localizationpriority: medium
ms.subservice: "compliance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# subjectRightsRequestEnumeratedMailboxLocation resource type

Namespace: microsoft.graph

Represents the properties for a subject rights request that defines specific mailboxes (Exchange mailboxes and individual or group Microsoft Teams chats) as a search location.

Inherits from [subjectRightsRequestMailboxLocation](../resources/subjectrightsrequestmailboxlocation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|userPrincipalNames|String collection|Collection of mailboxes that should be included in the search. Includes the user principal name (UPN) of each mailbox, for example, `Monica.Thompson@contoso.com`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.subjectRightsRequestEnumeratedMailboxLocation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.subjectRightsRequestEnumeratedMailboxLocation",
  "userPrincipalNames": ["String"]
}
```

