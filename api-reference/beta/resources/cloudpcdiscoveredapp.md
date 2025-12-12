---
title: "cloudPcDiscoveredApp resource type"
description: "Represents a defined collection of discovered app which app details can be used to create cloud app."
author: "niniliu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 06/12/2025
---

# cloudPcDiscoveredApp resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a defined collection of discovered apps whose details can be used to create a cloud app.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|appDetail |[cloudPcCloudAppDetail](../resources/cloudpccloudappdetail.md) | Specifies the details of the discovered app. Read-only.| 
|appName |String| The name of the discovered app; for example, `Paint`. Read-only.| 
|discoveredAppId |String| The unique identifier of the discovered app. Read-only.|
|sourceId |String | The ID of the source of the discovered app. For example, if the source is a custom device image, the **sourceId** value is the ID of that image. For example, `3035e17f-c0f7-49c1-9502-5990afcaf86f`. Read-only. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcDiscoveredApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcDiscoveredApp",
  "appDetail": {"@odata.type": "microsoft.graph.cloudPcCloudAppDetail"},
  "appName": "String",
  "discoveredAppId": "String",
  "sourceId": "String"
}
```
