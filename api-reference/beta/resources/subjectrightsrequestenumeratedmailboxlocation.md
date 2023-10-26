---
title: "subjectRightsRequestEnumeratedMailboxLocation resource type"
description: "Represents the properties for a subject rights request that defines specific mailboxes (Exchange mailboxes and individual or group Microsoft Teams chats) as a search location."
author: "skadam-msft"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: resourcePageType
---

# subjectRightsRequestEnumeratedMailboxLocation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the properties for a subject rights request that defines specific mailboxes (Exchange mailboxes and individual or group Microsoft Teams chats) as a search location.

Inherits from [subjectRightsRequestMailboxLocation](../resources/subjectrightsrequestmailboxlocation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|userPrincipalNames|String collection|Collection of mailboxes that should be included in the search. Includes the user principal name (UPN) of each mailbox, for example, `Monica.Thompson@contoso.com`.|
|upns (deprecated) |String collection|Collection of mailboxes that should be included in the search. Includes the UPN of each mailbox, for example, `Monica.Thompson@contoso.com`. Going forward, use the **userPrincipalNames** property. If you specify either **upns** or **userPrincipalNames**, the same values are populated automatically to the other property.|

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
  "upns": ["String"],
  "userPrincipalNames": ["String"]
}
```
