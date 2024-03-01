---
title: "edition resource type"
description: "This EntityType represents an edition of a particular Windows product."
author: "skandula"
ms.localizationpriority: medium
ms.service: "windows-10"
doc_type: resourcePageType
---

# edition resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This Entity type represents an edition of a particular Windows product. 
Examples of product editions: Enterprise, Core, Education, etc. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|ID|String|The identifier for the entry. Read-only.|
|name|String|The name of the edition. Read-only.|
|releasedName|String|The public name of the edition. Read-only.|
|deviceFamily|String|The Device family targeted by the edition|
|isInService|Boolean| Represents an edition of a particular Windows product. [Add link] |
|generalAvailabilityDateTime|DateTimeOffset|The date when the edition became available to the general customers for the first time. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|endofServiceDateTime|DateTimeOffset|The date when the edition reaches or reached end of service. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. |


## Relationships
|Relationships|Type|Description|
|:---|:---|:---|
|servicingPeriods| [microsoft.graph.windowsUpdates.servicingPeriod](.../resources/windowsupdates.servicingPeriod.md)| Each object holds information of a servicing period related to the product edition.|


## JSON representation
The following code is a JSON representation of the resource.
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
  "id": "String (identifier)",
  "name": "String",
  "releasedName": "String",
  "deviceFamily": "String",
  "isInService": "Boolean",
  "generalAvailabilityDateTime": "DateTimeOffset",
  "endOfServiceDateTime": "DateTimeOffset",  
  "servicePeriods": "Collection(microsoft.graph.windowsUpdates.servicingPeriod)"
}
```
