---
title: "subjectRightsRequestEnumeratedMailboxLocation resource type"
description: "Represents the properties for subject rights request enumerated mailbox location."
author: "skadam-msft"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: resourcePageType
---

# subjectRightsRequestEnumeratedMailboxLocation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the properties for subject rights request enumerated mailbox location. Use this type when you want to look for data in specific mailboxes.

Inherits from [subjectRightsRequestMailboxLocation](../resources/subjectrightsrequestmailboxlocation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|upns|String collection|Collection of mailboxes that should be included in the search. Includes the UPN (user principal name) of each mailbox, for example, `user1@contoso.onmicrosoft.com`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.subjectRightsRequestEnumeratedMailboxLocation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.subjectRightsRequestEnumeratedMailboxLocation",
  "upns": [
    "user1@contoso.onmicrosoft.com",
    "user2@contoso.onmicrosoft.com"
  ]
}
```

