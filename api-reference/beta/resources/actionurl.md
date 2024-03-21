---
title: "actionUrl resource type"
description: "The link to the documentation or Microsoft Entra admin center page that provides more information about an actionStep."
author: "ddeeps2610"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# actionUrl resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The link to the documentation or Microsoft Entra admin center page that provides more information about an [actionStep](../resources/actionstep.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Brief title for the page that the links directs to.|
|url|String|The URL to the documentation or Microsoft Entra admin center page.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.actionUrl"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.actionUrl",
  "displayName": "String",
  "url": "String"
}
```

