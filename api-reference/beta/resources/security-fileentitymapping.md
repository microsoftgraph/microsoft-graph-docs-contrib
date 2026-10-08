---
title: "fileEntityMapping resource type"
description: "Represents a mapping from columns in a custom detection rule query result to a file entity that is attached to the resulting alert."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/25/2026
---

# fileEntityMapping resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a mapping from columns in a [custom detection rule](../resources/security-detectionrule.md) query result to a file entity that is attached to the resulting alert.

Base type: [entityMapping](../resources/security-entitymapping.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|nameColumn|String|Name of the detection query column that maps to the name of the alert entity.|
|sha1Column|String|Name of the detection query column that maps to the SHA-1 hash of the alert entity.|
|sha256Column|String|Name of the detection query column that maps to the SHA-256 hash of the alert entity.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.fileEntityMapping",
  "baseType": "microsoft.graph.security.entityMapping",
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.fileEntityMapping",
  "nameColumn": "String",
  "sha1Column": "String",
  "sha256Column": "String"
}
```
