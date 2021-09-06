---
title: "userTrainingContentEventInfo resource type"
description: "Represents training event details of assigned trainings to users in a tenant in attack simulation and training."
author: "Gopal-MSFT"
ms.localizationpriority: Menium
ms.prod: "security"
doc_type: resourcePageType
---

# userTrainingContentEventInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents training event details of assigned trainings to users in a tenant in attack simulation and training.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|browser|String|Browser of the user from where the training event was generated.|
|contentDateTime|DateTimeOffset|Date and time of the training content playback by the user.|
|ipAddress|String|IP address of the user for the training event.|
|osPlatformDeviceDetails|String|OS, platform and device details of the user for the training event.|
|potentialScoreImpact|Double|Potential improvement in security posture of the tenant after completion of the training.|

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

