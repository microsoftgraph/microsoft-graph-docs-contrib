---
title: "payloadDetail resource type"
description: "Represents details about a payload."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# payloadDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details about a payload.

Base type of [emailPayloadDetail](../resources/emailpayloaddetail.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|coachmarks|[payloadCoachmark](../resources/payloadcoachmark.md) collection|Payload coachmark details.|
|content|String|Payload content details.|
|phishingUrl|String|The phishing URL used to target a user.|

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
    "@odata.type": "#microsoft.graph.payloadDetail",
    "coachMarks": [
        {
            "@odata.type": "microsoft.graph.payloadCoachmark"
        }
    ],
    "content": "String",
    "phishingUrl": "String"
}
```
