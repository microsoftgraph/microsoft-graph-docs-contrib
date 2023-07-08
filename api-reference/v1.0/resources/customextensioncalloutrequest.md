---
title: "customExtensionCalloutRequest resource type"
description: "Defines the custom extension callout request payload that's sent to external systems."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customExtensionCalloutRequest resource type

Namespace: microsoft.graph

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
The following is a JSON representation of the resource.
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

