---
title: "expediteSettings resource type"
description: "Represents settings for expediting the deployment of content."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# expediteSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents settings for expediting the deployment of content.

The [catalog content](../resources/windowsupdates-qualityupdatecatalogentry.md) has the property **isExpeditable** set to `true` if it can be expedited. If an attempt is made to create a deployment tagged with **isExpedited** set to `true` but the content has **isExpeditable** set to `false`, then the operation might return a `400 Bad Request` response code. For more details, see [Deploy an expedited security update using the Windows Update for Business deployment service](/graph/docs/concepts/windowsupdates-deploy-expedited-update.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isExpedited|Boolean|`True` indicates that the deployment of the content is expedited. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.expediteSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.expediteSettings",
  "isExpedited": "Boolean"
}
```
