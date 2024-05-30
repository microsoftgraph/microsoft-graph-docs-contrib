---
title: "edition resource type"
description: "Represents a specific edition of a Windows product, such as Enterprise, Core, or Education."
author: "skandula"
ms.localizationpriority: medium
ms.service: "windows-update-business"
doc_type: resourcePageType
---

# edition resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a specific edition of a Windows product, such as Enterprise, Core, or Education.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|deviceFamily|String|The device family targeted by the edition.|
|endOfServiceDateTime|DateTimeOffset|The date and time when the edition reached the end of service. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. |
|generalAvailabilityDateTime|DateTimeOffset|The date and time when the edition became available to the general customers for the first time. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|id|String|The unique identifier for the edition entry. Read-only.|
|isInService|Boolean|Indicates whether the edition is in service or out of service.|
|name|String|The name of the edition. Read-only.|
|releasedName|String|The public name of the edition. Read-only.|

## Relationships

|Relationships|Type|Description|
|:---|:---|:---|
|servicingPeriods| [microsoft.graph.windowsUpdates.servicingPeriod](../resources/windowsupdates-servicingperiod.md) collection| Each object holds information of a servicing period related to the product edition.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.edition",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.edition",
  "deviceFamily": "String",
  "endOfServiceDateTime": "String (timestamp)",
  "generalAvailabilityDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "isInService": "Boolean",
  "name": "String",
  "releasedName": "String"
}
```
