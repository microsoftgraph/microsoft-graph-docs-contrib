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

Represents the properties for subject rights request enumerated mailbox location. This type should be used only when specified mailboxes should be searched.

Inherits from [subjectRightsRequestMailboxLocation](../resources/subjectrightsrequestmailboxlocation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|upns|String collection|Collection of mailbox that should be included in the search. Include the upn of the mailbox for e.g. user1@contoso.onmicrosoft.com|

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

