---
title: "accessReviewError resource type"
description: "Represents an error that occurred within an access review instance lifecycle."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 08/10/2026
---

# accessReviewError resource type

Namespace: microsoft.graph

In an [accessReviewInstance](../resources/accessreviewinstance.md), the **errors** property contains errors that occurred in the access review instance lifecycle. This resource is read-only.

Inherits from [genericError](../resources/genericerror.md).

## Properties
| Property                     | Type     | Description                          |
| :--------------------------- | :------  | :----------                          |
| code  |String  | Represents the error type. Inherited from [genericError](../resources/genericerror.md). Read-only. |
| message |String | Represents the error details. Inherited from [genericError](../resources/genericerror.md). Read-only.|

## Relationships
None.


## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewError"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewError",
  "code": "String",
  "message": "String"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "accessReviewError resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
