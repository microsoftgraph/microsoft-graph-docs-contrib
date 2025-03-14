---
title: "aadUserConversationMemberResult resource type"
description: "Resource for modeling responses of bulk operations on aadUserConversationMember."
author: "AkJo"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 10/18/2024
---

# aadUserConversationMemberResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the individual response for each member specified in a bulk operation that includes [aadUserConversationMember](aaduserconversationmember.md) objects in the request.

Inherits from [actionResultPart](actionresultpart.md).

## Properties

| Property | Type	| Description |
|:---------------|:--------|:----------|
|error|[publicError](publicerror.md) |The error that occurred, if any, during the course of the bulk operation.|
|userId|String|The user object ID of the Microsoft Entra user that was being added as part of the bulk operation.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.aadUserConversationMemberResult"
}-->

```json
{
  "error": "microsoft.graph.publicError",
  "userId": "String"
}
```

## Related content

- [Add members in bulk to a team](../api/conversationmembers-add.md)
- [Remove members in bulk from a team](../api/conversationmember-remove.md)

<!-- uuid: 20fd7863-9545-40d4-ae8f-fee2d115a690
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "aadUserConversationMemberResult",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
