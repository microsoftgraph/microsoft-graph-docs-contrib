---
title: "protectedApplicationMetadata resource type (preview)"
description: "Represents metadata about an application whose activities are being governed by an integrated application."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# protectedApplicationMetadata resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents metadata about an application whose activities governed by an integrated application.

For internal use only. Don't use.

## Properties

| Property      | Type   | Description                                                      |
| :------------ | :----- | :--------------------------------------------------------------- |
| applicationLocation | [policyLocation](../resources/policylocation.md) | For internal use only. Don't use. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.protectedApplicationMetadata",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.protectedApplicationMetadata",
  "applicationLocation": {
    "@odata.type": "#microsoft.graph.policyLocation",
    "location": "String"
  }
}
```
