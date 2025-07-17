---
title: "customExtensionCalloutRequest resource type"
description: "Defines the custom extension callout request payload that's sent to external systems."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# customExtensionCalloutRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the custom extension callout request payload that's sent to external systems.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|data|[customExtensionData](../resources/customextensiondata.md)|Contains the data that will be provided to the external system.|
|source|String|Identifies the source system or event context related to the callout request.|
|type|String|Describes the type of event related to the callout request.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customExtensionCalloutRequest"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customExtensionCalloutRequest",
  "source": "String",
  "type": "String",
  "data": {
    "@odata.type": "microsoft.graph.customExtensionData"
  }
}
```

