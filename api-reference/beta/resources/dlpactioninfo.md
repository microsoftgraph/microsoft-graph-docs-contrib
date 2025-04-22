---
title: "dlpActionInfo"
toc.title: "dlpActionInfo (preview)"
description: "Base type for actions defined within a Data Loss Prevention (DLP) rule."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: complexTypePageType
---

# dlpActionInfo complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Base type for actions defined within a Data Loss Prevention (DLP) rule. Specific actions like `blockAccessAction` or `notifyUserAction` inherit from this type.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|action|[microsoft.graph.dlpAction](../resources/dlpaction.md)|The type of DLP action. Possible values vary depending on the derived type but might include `notifyUser`, `blockAccess`, `deviceRestriction`, etc.|

## Relationships

None.

## JSON representation

The following JSON representation shows the complex type.
<!-- {
  "blockType": "resource",
  "abstract": true,
  "@odata.type": "microsoft.graph.dlpActionInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.dlpActionInfo",
  "action": "microsoft.graph.dlpAction"
}
```
