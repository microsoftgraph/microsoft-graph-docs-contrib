---
title: "contentActivity resource type"
description: "Represents audit data from content processing for Microsoft Purview to ensure compliance, track user actions, and detect unusual behavior."
author: "ArunGedela"
ms.date: 04/03/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# contentActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents audit data from content processing for Microsoft Purview to ensure compliance, track user actions, and detect unusual behavior.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/activitiescontainer-post-contentactivities.md)|[contentActivity](../resources/contentactivity.md)|Create a new contentActivity object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|contentMetadata|[processContentRequest](../resources/processcontentrequest.md)|Contains metadata about the content, activity, device, and integrated application. When creating a contentActivity, submit content entries in **contentToProcess.contentEntries**; use [contentActivityMetadata](../resources/contentactivitymetadata.md) to report a DLP enforcement result or [evaluationIncompleteActivityMetadata](../resources/evaluationincompleteactivitymetadata.md) to report a Secure by Default (SBD) policy evaluation that couldn't be completed. An incomplete-evaluation entry requires **errorAction** and **inspectionIncompleteReason**.|
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
