---
title: "payloadDetail resource type"
description: "Represents the detail of a payload."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# emailIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the detail of a payload.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|String|Payload content details.|
|coachmarks|[payloadCoachmark](../resources/payloadcoachmark.md)|collection|Payload coachmark details.|
|phishingUrl|String|Phishing url used to target a user.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.payloadDetail"
}
-->
``` json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/attackSimulation/payloads/2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc/detail",
    "content": "String",
    "coachMarks": [
        {
            "coachmarkLocation": {
                "length": "Integer",
                "offset": "Integer",
                "type": "String"
            },
            "description": "String",
            "indicator": "String",
            "isValid": "Boolean",
            "language": "String",
            "order": "Integer"            
        }
    ],
    "phishingUrl": "String",

}
```

