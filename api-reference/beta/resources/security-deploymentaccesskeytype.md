---
title: "deploymentAccessKeyType resource type"
description: "Sensor deployment access key"
author: "amirfeldman"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 09/10/2024
---

# deploymentAccessKeyType resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Microsoft Defender for Identity sensor deployment access key.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deploymentAccessKey|String|The Deployment access key.|

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
