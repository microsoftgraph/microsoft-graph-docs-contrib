---
title: "actionResultPart resource type"
description: "Abstract type to model responses of bulk operations."
author: "abshar-teams"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 10/18/2024
---

# actionResultPart resource type

Namespace: microsoft.graph

An abstract type that serves as a base to model responses of bulk operations. The **error** property is selectively populated based on whether the response represents an error.

## Properties

| Property | Type	| Description |
|:---------------|:--------|:----------|
|error|[publicError](publicerror.md) |The error that occurred, if any, during the bulk operation.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.actionResultPart"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.actionResultPart",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  }
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
  "description": "actionResultPart",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


