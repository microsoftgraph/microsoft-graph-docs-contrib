---
title: "fileFormatReferenceValue resource type"
description: "Represents a reference to a RefFileFormat entry in a collection of referenceDefinition objects."
author: "dakelle"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
ms.date: 06/05/2024
---

# fileFormatReferenceValue resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a reference to a `RefFileFormat` entry in a collection of [referenceDefinition](industrydata-referencedefinition.md) objects.

Inherits from [referenceValue](industrydata-referencevalue.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
| code | String | The code of the desired [referenceDefinition](industrydata-referencedefinition.md) entry. Inherited from [referenceValue](industrydata-referencevalue.md).The possible values are: `schoolDataSyncV1`, `schoolDataSyncV2Rev1` |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
| value | [microsoft.graph.industryData.referenceDefinition](industrydata-referencedefinition.md) | The reference to the bound **referenceDefinition** entity. Inherited from [referenceValue](industrydata-referencevalue.md) |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.fileFormatReferenceValue"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.fileFormatReferenceValue",
  "code": "String"
}
```

