---
title: "blockAccessAction resource type"
toc.title: "blockAccessAction resource type(preview)"
description: "Represents a DLP action that explicitly blocks access to the content that triggered the rule match."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# blockAccessAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a DLP action that explicitly blocks access to the content that triggered the rule match. Inherits from [dlpActionInfo](../resources/dlpactioninfo.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|action|[microsoft.graph.dlpAction](../resources/dlpaction.md)|The type of DLP action. Inherited from [dlpActionInfo](../resources/dlpactioninfo.md). The `action` property is typically set to `blockAccess`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.blockAccessAction",
  "baseType": "microsoft.graph.dlpActionInfo",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.blockAccessAction",
  "action": "blockAccess"
}
```
