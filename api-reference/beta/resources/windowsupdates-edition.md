---
title: "edition resource type"
description: "This EntityType represents a Windows product."
author: "skandula"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# edition resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is an Entity type that represents an edition of a particular Windows product. 

Examples: To be added 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier for the entry. Read-only.|
|name|String|The name of the edition. Read-only.|
|releasedName|String|The public name of the edition. Read-only.|
|deviceFamily|String|The Device family targeted by the edition|
|isInService|Boolean| Represents an edition of a particular Windows product. [Add link] |
|generalAvailabilityDateTime|DateTimeOffset|The date when the edition became available to the general customers for the first time. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|endofServiceDateTime|DateTimeOffset|The date when the edition will reach or has already reached end of service. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. |
|servicingPeriods|Navigation property| Collection of type microsoft.graph.windowsUpdates.servicingPeriod. Each object holds information of a servicing period related to the product edition.|

Supported Methods: GET

Supported query parameters: filter(eq) name, expand(editions,knownIssues, revisions)

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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
