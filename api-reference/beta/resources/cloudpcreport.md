---
title: "cloudPcReport resource type"
description: "Represents the Windows 365 Cloud PC-related reports."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/10/2025
---

# cloudPcReport resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Windows 365 Cloud PC-related reports, including the Windows 365 Cloud PC recommendation reports.

This resource is the recommended replacement for the [cloudPcReports](cloudpcreports.md) resource. Use the methods in the [Methods](#methods) section to get the corresponding report data in the response.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[retrieveCloudPcRecommendationReports](../api/cloudpcreport-retrievecloudpcrecommendationreports.md)|Stream|Get the device recommendation reports for Cloud PCs, such as the usage category report.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the reports. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcReport",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcReport",
  "id": "String (identifier)"
}
```
