---
title: "userTrainingContentEventInfo resource type"
description: "Represents training event details of assigned trainings to users in an attack simulation and training campaign."
author: "Gopal-MSFT"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# userTrainingContentEventInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details of a training event in an attack simulation and training campaign.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|browser|String|Browser of the user from where the training event was generated.|
|contentDateTime|DateTimeOffset|Date and time of the training content playback by the user.|
|ipAddress|String|IP address of the user for the training event.|
|osPlatformDeviceDetails|String|The operating system, platform, and device details of the user for the training event.|
|potentialScoreImpact|Double|Potential improvement in security posture of the tenant after completion of the training by the user.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userTrainingContentEventInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userTrainingContentEventInfo",
  "contentDateTime": "String (timestamp)",
  "ipAddress": "String",
  "osPlatformDeviceDetails": "String",
  "browser": "String",
  "potentialScoreImpact": "Double"
}
```

