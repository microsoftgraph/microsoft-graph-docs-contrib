---
title: "sensorCandidate resource type"
description: "Represents a Microsoft Defender for Identity sensor that's ready to be activated."
author: "SamuelBenichou"
ms.date: 07/13/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# sensorCandidate resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft Defender for Identity sensor that's ready to be activated.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method| Return type                                                                                      |Description|
|:---|:-------------------------------------------------------------------------------------------------|:---|
|[List](../api/security-identitycontainer-list-sensorcandidates.md)| [microsoft.graph.security.sensorCandidates](../resources/security-sensorcandidate.md) collection |Get a list of the sensorCandidate objects and their properties.|
|[Activate](../api/security-sensorcandidate-activate.md)| None                                                                                             |Activate Microsoft Defender for Identity sensors.|

## Properties
|Property|Type| Description                                                                                                                                                     |
|:---|:---|:----------------------------------------------------------------------------------------------------------------------------------------------------------------|
|computerDnsName|String| The DNS name of the computer associated with the sensor.                                                                                                        |
|domainName|String| The domain name of the sensor.                                                                                                                                  |
|id|String| The unique identifier for the sensor candidate. Inherited from [microsoft.graph.entity](../resources/entity.md). Inherits from [entity](../resources/entity.md) |
|lastSeenDateTime|DateTimeOffset| The date and time when the sensor was last seen.                                                                                                                |
|senseClientVersion|String| The version of the Defender for Identity sensor client.  Supports `$filter` (`eq`).                                                                                                       |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.sensorCandidate",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.sensorCandidate",
  "id": "String (identifier)",
  "computerDnsName": "String",
  "senseClientVersion": "String",
  "lastSeenDateTime": "String (timestamp)",
  "domainName": "String"
}
```
