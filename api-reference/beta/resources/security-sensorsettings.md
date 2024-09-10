---
title: "sensorSettings resource type"
description: "Sensor settings information"
author: "amirfeldman"
ms.localizationpriority: medium
ms.subservice: "Microsoft Defender for Identity"
doc_type: resourcePageType
ms.date: 09/10/2024
---

# sensorSettings resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Sensor settings information.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|Description of the sensor.|
|domainControllerDnsNames|String collection|DNS Names for the domain controller|
|isDelayedDeploymentEnabled|Boolean|Enable delayed updates for the sensor|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|networkAdapters|[microsoft.graph.security.networkAdapter](../resources/security-networkadapter.md) collection|Sensor network adapters.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.sensorSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.sensorSettings",
  "description": "String",
  "domainControllerDnsNames": [
    "String"
  ],
  "isDelayedDeploymentEnabled": "Boolean"
}
```