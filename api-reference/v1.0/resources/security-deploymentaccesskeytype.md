---
title: "deploymentAccessKeyType resource type"
description: "Sensor deployment access key"
author: "naalmog"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 10/29/2024
---

# deploymentAccessKeyType resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the deployment access key for a Microsoft Defender for Identity sensor.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deploymentAccessKey|String|The deployment access key.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.deploymentAccessKeyType"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.deploymentAccessKeyType",
  "deploymentAccessKey": "String"
}
```
