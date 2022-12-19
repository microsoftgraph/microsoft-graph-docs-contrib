---
title: "payloadCoachmark resource type"
description: "Represents the payload coachmark detail of a payload."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# payloadCoachmark resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the payload coachmark detail of a payload.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|coachmarkLocation|(../resources/coachmarklocation.md)|Coachmark location.|
|description|String|Description about the coachmark.|
|indicator|String|Coachmark indicator.|
|isValid|String|Tells if the coachmark is valid or not.|
|order|String|Coachmark order.|
|language|String|Coachmark language.|

## Relationships
None.


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.payloadCoachmark"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.payloadCoachmark",
  "coachmarkLocation": {
    "offset": "Integer",
    "length": "Integer",
    "type": "String"
  },
  "description": "String",
  "indicator": "String",
  "isValid": "Boolean",
  "order": "Integer",
  "langauage":"String"
}
```

