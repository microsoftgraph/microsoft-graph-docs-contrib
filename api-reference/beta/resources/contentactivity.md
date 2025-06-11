---
title: "contentActivity resource type"
description: "Represents audit log data from content processing, in a structured way to ensure compliance, track user actions, and detect unusual behavior."
author: "ArunGedela"
ms.date: 04/03/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# contentActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents audit log data from content processing in a structured way to ensure compliance, track user actions, and detect unusual behavior.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/activitiescontainer-post-contentactivities.md)|[contentActivity](../resources/contentactivity.md)|Create a new contentActivity object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|contentMetadata|[processContentRequest](../resources/processcontentrequest.md)|Defines the input payload. It includes the relevant metadata about the activity, device, and integrated application.|
|id|String|Unique identifier.|
|scopeIdentifier|String|The scope identified from computed protection scopes.|
|userId|String|ID of the user.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.contentActivity",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.contentActivity",
  "id": "String (identifier)",
  "userId": "String",
  "scopeIdentifier": "String",
  "contentMetadata": {
    "@odata.type": "microsoft.graph.processContentRequest"
  }
}
```
