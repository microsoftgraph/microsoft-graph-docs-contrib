---
title: "customExtensionCalloutResponse resource type"
description: "Defines the custom extension callout response payload that external systems send back for callback scenarios of custom extensions."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# customExtensionCalloutResponse resource type

Namespace: microsoft.graph

Defines the custom extension callout response payload that external systems send back for callback scenarios of custom extensions.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|data|[customExtensionData](../resources/customextensiondata.md)|Contains the data the external system provides to the custom extension endpoint.|
|source|String|Identifies the external system or event context related to the response.|
|type|String|Describes the type of event related to the response.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customExtensionCalloutResponse"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customExtensionCalloutResponse",
  "source": "String",
  "type": "String",
  "data": {
    "@odata.type": "microsoft.graph.customExtensionData"
  }
}
```
