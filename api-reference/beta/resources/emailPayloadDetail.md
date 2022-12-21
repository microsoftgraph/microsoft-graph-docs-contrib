---
title: "emailPayloadDetail resource type"
description: "Represents the detail of an email typpayload."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# emailPayloadDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the detail of an email type payload.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|coachmarks|[payloadCoachmark](../resources/payloadcoachmark.md)|Payload coachmark details. Inherited from [payloadDetail](../resources/payloaddetail.md).|
|content|String|Payload content details. Inherited from [payloadDetail](../resources/payloaddetail.md).|
|fromEmail|String|Email address of the user.|
|fromName|String|Display name of the user.|
|isExternalSender|String|Email address of the user.|
|phishingUrl|String|Phishing url used to target a user. Inherited from [payloadDetail](../resources/payloaddetail.md).|
|subject|String|Email address of the user.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.emailPayloadDetail"
}
-->
``` json
{
   "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/attackSimulation/payloads/2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc/detail",
   "coachMarks": [
        {
            "indicator": "String",
            "description": "String",
            "language": "String",
            "order": "Integer",
            "isValid": "Boolean",
            "coachmarkLocation": {
                "offset": "Integer",
                "length": "Integer",
                "type": "String"
            }
        }
    ],            
    "content": "String",
    "fromEmail": "String",
    "fromName": "String",
    "IsExternalSender": "Boolean",
    "phishingUrl": "String",
    "subject": "String"
 }
```

