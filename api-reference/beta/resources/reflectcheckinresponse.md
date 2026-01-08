---
title: "reflectCheckInResponse resource type"
description: "Represents a response to Microsoft Reflect check-in."
author: "v-rmanda"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
toc.title: "Reflect check-in response"
ms.date: 09/19/2024
---

# reflectCheckInResponse resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a response to [Microsoft Reflect](https://reflect.microsoft.com/) check-in.
Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/reportsroot-list-reflectcheckinresponses.md)|[reflectCheckInResponse](../resources/reflectcheckinresponse.md) collection|Get a list of [Reflect check-ins](../resources/reflectcheckinresponse.md) that were submitted by a student.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|checkInId|String|Identifier for the Reflect check-in.|
|checkInTitle|String|The question or prompt of the Reflect check-in that this response addresses.|
|classId|String|ID of the class associated with the Reflect check-in.|
|createdDateTime|DateTimeOffset|Date and time when the Reflect check-in was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|creatorId|String|ID of the user who created the Reflect check-in.|
|isClosed|Boolean|Indicates whether the Reflect check-in is closed (`true`) or open (`false`).|
|responderId|String|ID of the user who responded to the Reflect check-in.|
|responseEmotion|responseEmotionType|Represents the exact emotion name that the responder felt during the Reflect check-in response. The possible values are: `none`, `confident`, `excited`, `happy`, `motivated`, `peaceful`, `ambitious`, `cheerful`, `comfortable`, `creative`, `determined`, `energized`, `focused`, `fulfilled`, `grateful`, `included`, `inspired`, `optimistic`, `proud`, `successful`, `valuable`, `annoyed`, `bored`, `calm`, `confused`, `glad`, `content`, `pensive`, `reserved`, `restless`, `shocked`, `tired`, `angry`, `depressed`, `exhausted`, `lonely`, `nervous`, `anxious`, `apathetic`, `concerned`, `disappointed`, `frightened`, `frustrated`, `hopeless`, `hurt`, `jealous`, `miserable`, `overwhelmed`, `skeptical`, `stressed`, `stuck`, `worthless`, `awed`, `ashamed`, `curious`, `sensitive`, `sad`, `unknownFutureValue`.|
|responseFeedback|responseFeedbackType|Represents the pleasantness level of the response that indicates how pleasant the responder felt. The possible values are: `none`, `notDetected`, `veryUnpleasant`, `unpleasant`, `neutral`, `pleasant`, `veryPleasant`, `unknownFutureValue`.|
|submitDateTime|DateTimeOffset|Date and time when the response to the Reflect check-in was submitted. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.reflectCheckInResponse",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.reflectCheckInResponse",
  "checkInId": "String",
  "checkInTitle": "String",
  "classId": "String",
  "createdDateTime": "String (timestamp)",
  "creatorId": "String",
  "isClosed": "Boolean",
  "responderId": "String",
  "responseEmotion": "String",
  "responseFeedback": "String",
  "submitDateTime": "String (timestamp)"
}
```

