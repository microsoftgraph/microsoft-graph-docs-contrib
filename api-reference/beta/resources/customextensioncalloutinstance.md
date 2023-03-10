---
title: "customExtensionCalloutInstance resource type"
description: "Defines the custom extension callout instane record information, this is read only object"
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customExtensionCalloutInstance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the custom extension callout instance record information.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|customExtensionId|String|Identification of the custom extension triggered at this instance.|
|detail|String|Detail provided by the customer during callback of the request instance.|
|externalCorrelationId|String|Logic app unique run Id.|
|id|String|Unique identifier for the callout instance. Read-only.|
|status|customExtensionCalloutInstanceStatus|Status of request to custom extension..The possible values are: `calloutSent`, `callbackReceived`, `calloutFailed`, `callbackTimedOut`, `waitingForCallback`, `unknownFutureValue`.|

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

