---
title: "targetUserSponsors complex type"
description: "Identifies a relationship to another user in the tenant who will be allowed as approver."
author: "sadia353"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# targetUserSponsors complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used in the approval settings of an [access package assignment policy](accesspackageassignmentpolicy.md). 
It is a subtype of [userSet](userset.md), in which the `@odata.type` value `#microsoft.graph.targetUserSponsors` indicates that a requesting user's sponsors are the approvers. When creating an access package assignment policy approval stage with **targetUserSponsors**, also include another approver, such as a single user or group member, in case the requesting user does not have sponsors.


Inherits from [userSet](../resources/userset.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isBackup|Boolean|For sponsors in an approval stage, indicates whether the sponsors are backup fallback approvers. Inherited from [userSet](../resources/userset.md).|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.targetUserSponsors"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.targetUserSponsors",
  "isBackup": "Boolean"
}
```
