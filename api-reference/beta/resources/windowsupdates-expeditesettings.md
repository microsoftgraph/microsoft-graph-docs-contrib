---
title: "expediteSettings resource type"
description: "Represents settings for expediting the deployment of content."
author: "andredm7"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 01/27/2026
---

# expediteSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents settings for expediting the deployment of content.

The [catalog content](../resources/windowsupdates-qualityupdatecatalogentry.md) has the property **isExpeditable** set to `true` if it can be expedited. If an attempt is made to create a deployment tagged with **isExpedited** set to `true` but the content has **isExpeditable** set to `false`, then the operation might return a `400 Bad Request` response code. For more information, see [Deploy an expedited quality update using Windows Autopatch](/graph/docs/concepts/windowsupdates-deploy-expedited-update.md).

An expedite readiness test is an expedited deployment that delivers no content to the device. The purpose of designating an expedited deployment as a readiness test is to ensure that the device meets the prerequisites for a successful expedited quality update deployment. An attempt that is made to create a deployment with **isExpedited** set to `false` and **isReadinessTest** set to `true` returns a `400 Bad Request` response code.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isExpedited|Boolean|`True` indicates that the deployment of the content is expedited. |
|isReadinessTest|Boolean|`True` indicates that the deployment is an expedite readiness test. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.expediteSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.expediteSettings",
  "isExpedited": "Boolean", 
  "isReadinessTest": "Boolean"
}
```
