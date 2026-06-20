---
title: "amazonResourceEntityMapping resource type"
description: "Represents a mapping from columns in a custom detection rule query result to an Amazon resource entity that is attached to the resulting alert."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/25/2026
---

# amazonResourceEntityMapping resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a mapping from columns in a [custom detection rule](../resources/security-detectionrule.md) query result to an Amazon resource entity that is attached to the resulting alert.

Base type: [entityMapping](../resources/security-entitymapping.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|amazonResourceIdColumn|String|Name of the detection query column that maps to the Amazon resource ID of the alert entity.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.amazonResourceEntityMapping",
  "baseType": "microsoft.graph.security.entityMapping",
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.amazonResourceEntityMapping",
  "amazonResourceIdColumn": "String"
}
```
