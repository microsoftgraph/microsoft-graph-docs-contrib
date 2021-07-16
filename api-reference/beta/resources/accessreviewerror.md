---
title: "accessReviewError resource type"
description: "Represents an error that occurred within an access review instance lifecycle."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewError resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Represent errors happen in review instance lifecycle. **code** represent error type. **message** contain error details. This resource is read-only.

Inherits from [genericError](../resources/genericerror.md).

## Properties
| Property                     | Type     | Description                          |
| :--------------------------- | :------  | :----------                          |
| code  |String  | Inherit from microsoft.graph.genericError. Error happened in review life cycle.|
| message |String | Inherit from microsoft.graph.genericError. Error details.|

## Relationships
None.


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewError"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewError"
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
