---
title: "email payload Detail resource type"
description: "Represents the detail of a payload."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# emailPayloadDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the detail of a payload.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|phishingUrl|String|Phishing url used to target a user. Inherited from [payloadDetail](../resources/payloaddetail.md).|
|content|String|Payload content details. Inherited from [payloadDetail](../resources/payloaddetail.md).|
|coachmarks|[payloadCoachmark](../resources/payloadcoachmark.md)|Payload coachmark details. Inherited from [payloadDetail](../resources/payloaddetail.md).|
|fromName|String|Display name of the user.|
|fromEmail|String|Email address of the user.|
|isExternalSender|String|Email address of the user.|
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
    "fromName": "test@tst.com",
    "fromEmail": "test@test.com",
    "addIsExternalSender": false,
    "subject": "Payload Detail",
    "content": "<meta http-equiv=\"Content-Type\" content=\"text/html>\">",
    "phishingUrl": "www.testphishing.com",
    "coachMarks": [
        {
            "indicator": "URL hyperlinking",
            "description": "URL hyperlinking hides the true URL behind text; the text can also look like another link",
            "language": "en",
            "order": 0,
            "isValid": "true",
            "coachmarkLocation": {
                "offset": 144,
                "length": 6,
                "type": "messageBody"
            }
        }
    ]            
}
```

