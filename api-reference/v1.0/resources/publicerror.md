---
title: "publicError resource type"
description: "Represent a generic error and its details."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "teams"
author: "AkJo"
ms.date: 07/22/2024
---

# publicError resource type

Namespace: microsoft.graph

Represents a generic error and its details.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|code|string| Represents the error code.
|details|[publicErrorDetail](publicerrordetail.md) collection|Details of the error.|
|innerError|[publicInnerError](publicinnererror.md)|Details of the inner error.|
|message|string| A non-localized message for the developer.
|target|String|The target of the error.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.publicError"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.publicError",
  "code": "String",
  "message": "String",
  "target": "String",
  "details": [
    {
      "@odata.type": "microsoft.graph.publicErrorDetail"
    }
  ],
  "innerError": {
    "@odata.type": "microsoft.graph.publicInnerError"
  }
}
```
