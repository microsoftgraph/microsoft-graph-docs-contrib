---
title: "sensorDeploymentPackage resource type"
description: "Sensor deployment package"
author: "amirfeldman"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 09/10/2024
---

# sensorDeploymentPackage resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a sensor deployment package.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|downloadUrl|String|URL to download the sensor deployment package.|
|version|String|Version of the sensor.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.sensorDeploymentPackage"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.sensorDeploymentPackage",
  "downloadUrl": "String",
  "version": "String"
}
```
