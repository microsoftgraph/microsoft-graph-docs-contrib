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

Represents the payload coachmark detail of a payload. A coachmark is an indicator to educate users in learning how to verify the authenticity of the payload in an attack simulation training campaign.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|coachmarkLocation|[coachmarkLocation](../resources/coachmarklocation.md)|The coachmark location.|
|description|String|The description about the coachmark.|
|indicator|String|The coachmark indicator.|
|isValid|Boolean|Indicates whether the coachmark is valid or not.|
|language|String|The coachmark language.|
|order|String|The coachmark order.|

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
        "@odata.type": "microsoft.graph.coachmarkLocation"
    },
    "description": "String",
    "indicator": "String",
    "isValid": "Boolean",
    "language": "String",
    "order": "String"
}
```
