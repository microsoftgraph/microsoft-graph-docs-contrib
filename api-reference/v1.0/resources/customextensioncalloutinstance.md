---
title: "customExtensionCalloutInstance resource type"
description: "Defines the calls that were made by an instance of a custom extension callout."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# customExtensionCalloutInstance resource type

Namespace: microsoft.graph

Defines the calls that were made by an instance of a custom extension callout.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|customExtensionId|String|Identification of the custom extension that was triggered at this instance.|
|detail|String|Details provided by the logic app during the callback of the request instance.|
|externalCorrelationId|String|The unique run identifier for the logic app.|
|id|String|Unique identifier for the callout instance. Read-only.|
|status|customExtensionCalloutInstanceStatus| The status of the request to the custom extension. The possible values are: `calloutSent`, `callbackReceived`, `calloutFailed`, `callbackTimedOut`, `waitingForCallback`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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
