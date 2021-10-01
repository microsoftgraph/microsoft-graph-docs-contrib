---
title: "identityProtectionRoot resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# identityProtectionRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get identityProtectionRoot](../api/identityprotectionroot-get.md)|[identityProtectionRoot](../resources/identityprotectionroot.md)|Read the properties and relationships of an [identityProtectionRoot](../resources/identityprotectionroot.md) object.|
|[Update identityProtectionRoot](../api/identityprotectionroot-update.md)|[identityProtectionRoot](../resources/identityprotectionroot.md)|Update the properties of an [identityProtectionRoot](../resources/identityprotectionroot.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|riskDetections|[riskDetection](../resources/riskdetection.md) collection|**TODO: Add Description**|
|riskyUsers|[riskyUser](../resources/riskyuser.md) collection|**TODO: Add Description**|
|settings|[settingsRoot](../resources/settingsroot.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityProtectionRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityProtectionRoot"
}
```

