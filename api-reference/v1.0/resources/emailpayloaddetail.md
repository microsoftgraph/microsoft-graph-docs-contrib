---
title: "emailPayloadDetail resource type"
description: "Represents details of an email type payload."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# emailPayloadDetail resource type

Namespace: microsoft.graph

Represents details of an email type payload.

Inherits from [payloadDetail](../resources/payloaddetail.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|coachmarks|[payloadCoachmark](../resources/payloadcoachmark.md)|Payload coachmark details. Inherited from [payloadDetail](../resources/payloaddetail.md).|
|content|String|Payload content details. Inherited from [payloadDetail](../resources/payloaddetail.md).|
|fromEmail|String|Email address of the user.|
|fromName|String|Display name of the user.|
|isExternalSender|Boolean|Indicates whether the sender isn't from the user's organization.|
|phishingUrl|String|Phishing URL used to target a user. Inherited from [payloadDetail](../resources/payloaddetail.md).|
|subject|String|The subject of the email address sent to the user.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.emailPayloadDetail",
  "baseType": "microsoft.graph.payloadDetail"
}
-->
``` json
{
    "@odata.type": "#microsoft.graph.emailPayloadDetail",
    "coachMarks": [
        {
            "@odata.type": "microsoft.graph.payloadCoachmark"
        }
    ],
    "content": "String",
    "fromEmail": "String",
    "fromName": "String",
    "isExternalSender": "Boolean",
    "phishingUrl": "String",
    "subject": "String"
}
```
