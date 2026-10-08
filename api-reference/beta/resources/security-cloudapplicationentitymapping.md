---
title: "cloudApplicationEntityMapping resource type"
description: "Represents a mapping from columns in a custom detection rule query result to a cloud application entity that is attached to the resulting alert."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/25/2026
---

# cloudApplicationEntityMapping resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a mapping from columns in a [custom detection rule](../resources/security-detectionrule.md) query result to a cloud application entity that is attached to the resulting alert.

Base type: [entityMapping](../resources/security-entitymapping.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|appIdColumn|String|Name of the detection query column that maps to the application ID of the alert entity.|
|nameColumn|String|Name of the detection query column that maps to the name of the alert entity.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.cloudApplicationEntityMapping",
  "baseType": "microsoft.graph.security.entityMapping",
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.cloudApplicationEntityMapping",
  "appIdColumn": "String",
  "nameColumn": "String"
}
```
