---
title: "blockAccessAction"
toc.title: "blockAccessAction (preview)"
description: "Represents a DLP action that explicitly blocks access to the content that triggered the rule match."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: complexTypePageType
---

# blockAccessAction  complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a DLP action that explicitly blocks access to the content that triggered the rule match. Inherits from [dlpActionInfo](../resources/dlpactioninfo.md).

## Properties

Inherits properties from [dlpActionInfo](../resources/dlpactioninfo.md). The `action` property is typically set to `blockAccess`.

## Relationships

None.

## JSON representation

The following JSON representation shows the complex type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.blockAccessAction",
  "baseType": "microsoft.graph.dlpActionInfo",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.blockAccessAction",
  // Inherited properties from dlpActionInfo
  "action": "blockAccess"
}
```
