---
title: "dlpActionInfo resource type"
description: "Base type for actions defined within a Data Loss Prevention (DLP) rule."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# dlpActionInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Base type for actions defined within a Data Loss Prevention (DLP) rule.

Specific actions like [restrictAccessActionBase](../resources/restrictaccessactionbase.md)  inherit from this type.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|action|microsoft.graph.security.dlpAction|The type of DLP action. Possible value is `restrictAccessAction`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "abstract": true,
  "@odata.type": "microsoft.graph.dlpActionInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.dlpActionInfo",
  "action": "String"
}
```
