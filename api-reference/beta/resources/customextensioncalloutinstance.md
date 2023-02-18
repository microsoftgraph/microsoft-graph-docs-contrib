---
title: "customExtensionCalloutInstance resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# customExtensionCalloutInstance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|customExtensionId|String|**TODO: Add Description**|
|detail|String|**TODO: Add Description**|
|externalCorrelationId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|status|customExtensionCalloutInstanceStatus|**TODO: Add Description**.The possible values are: `calloutSent`, `callbackReceived`, `calloutFailed`, `callbackTimedOut`, `waitingForCallback`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customExtensionCalloutInstance"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customExtensionCalloutInstance",
  "id": "String (identifier)",
  "customExtensionId": "String",
  "externalCorrelationId": "String",
  "detail": "String",
  "status": "String"
}
```

