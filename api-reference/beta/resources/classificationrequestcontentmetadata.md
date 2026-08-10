---
title: "classificationRequestContentMetaData resource type"
description: "Metadata that describes the content being classified in a text classification request."
author: "jcksonhe"
ms.date: 07/10/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# classificationRequestContentMetaData resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Metadata that describes the content being classified. Pass this optional metadata in the [textClassificationRequest](../resources/textclassificationrequest.md) **contentMetaData** property to give the service additional context about the source of the content.

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|sourceId|String|An identifier for the source of the content being classified.|
|workloadType|[mipWorkloads](enums.md#mipworkloads-values)|The type of workload the content belongs to. The possible values are: `endpointDevices`, `exchange`, `oneDriveForBusiness`, `sharePoint`, `teams`, `coldCrawl`, `applications`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.classificationRequestContentMetaData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.classificationRequestContentMetaData",
  "sourceId": "String",
  "workloadType": "String"
}
```
