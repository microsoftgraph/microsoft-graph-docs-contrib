---
title: "customExtensionHandlerInstance resource type"
description: "customExtensionHandlerInstance resource is used to record each instance of custom extension running information and its result."
author: "currenme"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# customExtensionHandlerInstance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The customExtensionHandlerInstance resource is used to record each instance of custom extension running information and its result.

## Methods
None

## Properties
|Property|Type|Description|
|:---|:---|:---|
|customExtensionId|String|Identifier of the custom extension triggered at this instance.|
|externalCorrelationId|String|The unique run ID for the logic app.|
|stage|accessPackageCustomExtensionStage|Indicates the stage of the request workflow when the access package custom extension runs. The possible values are: `assignmentRequestCreated`, `assignmentRequestApproved`, `assignmentRequestGranted`, `assignmentRequestRemoved`, `assignmentFourteenDaysBeforeExpiration`, `assignmentOneDayBeforeExpiration`, `unknownFutureValue`.|
|status|accessPackageCustomExtensionHandlerStatus|Status of the request to run the access package custom extension. The possible values are: `requestSent`, `requestReceived`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.customExtensionHandlerInstance"
}
-->
``` json

{
  "@odata.type": "#microsoft.graph.customExtensionHandlerInstance",
  "stage": "String",
  "customExtensionId": "String",
  "externalCorrelationId": "String",
  "status": "String"
}
```

