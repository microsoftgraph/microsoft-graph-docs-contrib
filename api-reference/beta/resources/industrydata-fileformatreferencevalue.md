---
title: "fileFormatReferenceValue resource type"
description: "Represents a pointer to a RefFileFormat entry in a collection of referenceDefinition objects."
author: "dakelle"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
---

# fileFormatReferenceValue resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a pointer to a `RefFileFormat` entry in a collection of [referenceDefinition](industrydata-referencedefinition.md) objects.

Inherits from [microsoft.graph.industryData.referenceValue](industrydata-referencevalue.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
| code | String | The code of the desired [referenceDefinition](industrydata-referencedefinition.md) entry. Inherited from [microsoft.graph.industryData.referenceValue](industrydata-referencevalue.md). |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
| value | [referenceDefinition](industrydata-referencedefinition.md) | Reference to the bound **referenceDefinition** entity. Inherited from [microsoft.graph.industryData.referenceValue](industrydata-referencevalue.md) |

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

