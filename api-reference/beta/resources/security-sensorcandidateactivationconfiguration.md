---
title: "sensorCandidateActivationConfiguration resource type"
description: "Represents the configuration for a Microsoft Defender for Identity sensor that is ready to be activated."
author: "SamuelBenichou"
ms.date: 07/13/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# sensorCandidateActivationConfiguration resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the configuration mode for automatic activation of eligible domain controllers.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type| Description                                                                       |
|:---|:---|:----------------------------------------------------------------------------------|
|[Get](../api/security-sensorcandidateactivationconfiguration-get.md)|[microsoft.graph.security.sensorCandidateActivationConfiguration](../resources/security-sensorcandidateactivationconfiguration.md)| Read the properties and relationships of sensor candidate activation mode object. |
|[Update](../api/security-identitycontainer-post-sensorcandidateactivationconfiguration.md)|[microsoft.graph.security.sensorCandidateActivationConfiguration](../resources/security-sensorcandidateactivationconfiguration.md)| Update the activation mode of a sensor candidate activation mode object.    |

## Properties
|Property|Type| Description                                                                                                    |
|:---|:---|:---------------------------------------------------------------------------------------------------------------|
|activationMode|microsoft.graph.security.sensorCandidateActivationMode| The mode for activating sensor candidates. The possible values are: `manual`, `automated`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.sensorCandidateActivationConfiguration",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.sensorCandidateActivationConfiguration",
  "activationMode": "String"
}
```
